package com.sap.cap.bookshop.handlers;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.Result;
import com.sap.cds.ql.Insert;
import com.sap.cds.ql.cqn.AnalysisResult;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnInsert;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.Books;
import cds.gen.catalogservice.CatalogService_;
import cds.gen.catalogservice.Reviews;
import cds.gen.catalogservice.Reviews_;
@Component
@ServiceName(CatalogService_.CDS_NAME)
public class CatalogServiceHandler implements EventHandler {

    private final PersistenceService db;
    private final CqnAnalyzer analyzer;

    public CatalogServiceHandler(PersistenceService db, CdsModel model ) {
        this.db = db;
      this.analyzer = CqnAnalyzer.create(model);
    }

    @On(event = AddReviewContext.CDS_NAME)
    public void addReview(AddReviewContext context) {

        CqnSelect select = context.getCqn();
     Integer bookId = (Integer)  analyzer.analyze(select).targetKeys().get(Books.ID);
        System.out.println("************************");
        System.out.println(bookId);

        String title = context.getTitle();
        String text = context.getText();
        Integer rating = context.getRating();

      Reviews reviews =  Reviews.create();
      reviews.setTitle(title);
      reviews.setText(text);
      reviews.setRating(rating);
      reviews.setBookId(bookId);

     CqnInsert  reviewInset = Insert.into(Reviews_.CDS_NAME).entry(reviews);

      System.out.println(reviewInset);
     Result reviewsaveResult =    db.run(reviewInset);

    Reviews  newreviews =  reviewsaveResult.single(Reviews.class);
        context.setResult(newreviews);

    }

    

    
}
