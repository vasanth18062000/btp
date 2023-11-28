package com.sap.cap.bookshop.handlers;

import org.springframework.stereotype.Component;
import com.sap.cds.ql.Insert;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnInsert;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.CatalogService_;
import cds.gen.catalogservice.Reviews;
import cds.gen.com.sap.book.Books;
import cds.gen.com.sap.book.Reviews_;


@Component
@ServiceName(CatalogService_.CDS_NAME)
public class CatalogServiceHandler implements EventHandler{
 
private final CqnAnalyzer analyzer;
private final PersistenceService db;

CatalogServiceHandler(CdsModel model,PersistenceService db ){
    this.analyzer=CqnAnalyzer.create(model);
    this.db=db;
}

@On(event = AddReviewContext.CDS_NAME)
public void addReview(AddReviewContext context){
    
    CqnSelect select = context.getCqn();
    String bookId = (String)analyzer.analyze(select).targetKeys().get(Books.ID);

    Reviews review = Reviews.create();
    //review.setId("345");
    review.setBookId(bookId);
    review.setTitle(context.getTitle());
    review.setRating(context.getRating());
    review.setText(context.getText());
    
    CqnInsert reviewInsert = Insert.into(Reviews_.CDS_NAME).entry(review);
    Reviews newReview = db.run(reviewInsert).single(Reviews.class);
    context.setResult(newReview);
}

}