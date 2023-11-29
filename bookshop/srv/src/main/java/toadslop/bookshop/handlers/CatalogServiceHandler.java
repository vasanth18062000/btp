package toadslop.bookshop.handlers;


import com.sap.cds.ql.Insert;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnInsert;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler ;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.catalogservice.CatalogService_;
import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.Books;

import org.springframework.stereotype.Component;
import cds.gen.catalogservice.Reviews;
import cds.gen.catalogservice.Reviews_;

@Component
@ServiceName(CatalogService_.CDS_NAME)
public class CatalogServiceHandler implements EventHandler{
    private final PersistenceService db;
    private final CqnAnalyzer analyzer;

    CatalogServiceHandler(PersistenceService db, CdsModel model){
        this.db=db;
        this.analyzer=CqnAnalyzer.create(model);
    }

    @On(event=AddReviewContext.CDS_NAME)
    public void addReview(AddReviewContext context) {
        CqnSelect select=context.getCqn();
        String bookId=(String) analyzer.analyze(select).targetKeys().get(Books.ID);
        System.out.println(bookId);

        Reviews review=Reviews.create();
        review.setBookId(bookId);
        review.setTitle(context.getTitle());
        review.setText(context.getText());
        review.setRating(context.getRating());

        CqnInsert reviewInsert=Insert.into(Reviews_.CDS_NAME).entry(review);
        System.out.println(reviewInsert);
        Reviews savedReview=db.run(reviewInsert).single(Reviews.class);
        context.setResult(savedReview);
    }

}
