package com.sap.cap.bookshop.handler;

import com.sap.cds.Result;
import com.sap.cds.ql.Insert;
import com.sap.cds.ql.cqn.AnalysisResult;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.Books;
import cds.gen.catalogservice.Reviews;
import cds.gen.catalogservice.Reviews_;
import cds.gen.catalogservice.CatalogService_;
import com.sap.cds.services.handler.annotations.On;
import org.springframework.stereotype.Component;

@Component
@ServiceName(CatalogService_.CDS_NAME)
public class CatalogServiceHandler implements EventHandler{

    private final PersistenceService db;
    private final CqnAnalyzer analyzer;

    CatalogServiceHandler(PersistenceService db,CdsModel model){
        this.db = db;
        this.analyzer = CqnAnalyzer.create(model);
    }

    @On(event = AddReviewContext.CDS_NAME)
    public void addReview(AddReviewContext context)
    {
        CqnSelect select = context.getCqn();
        Integer bookId = (Integer)analyzer.analyze(select).targetKeys().get(Books.ID);
        System.out.println(bookId);

        AnalysisResult analysisResult =   analyzer.analyze(select);
        System.out.println(analysisResult);
        Reviews review = Reviews.create();
        review.setTitle(context.getTitle());
        review.setText(context.getText());
        review.setRating(context.getRating());
        System.out.println(Insert.into(Reviews_.CDS_NAME).entry(review));
        Result savedReview = db.run(Insert.into(Reviews_.CDS_NAME).entry(review));
        Reviews newReview = savedReview.single(Reviews.class);
        context.setResult(newReview);
     }
}


