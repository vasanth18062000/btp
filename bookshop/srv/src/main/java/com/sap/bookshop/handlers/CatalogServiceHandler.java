package com.sap.bookshop.handlers;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.ql.Select;
import com.sap.cds.ql.cqn.AnalysisResult;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.bookservice.Books;
import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.CatalogService_;
import cds.gen.com.sap.bookshop.Reviews;

@Component
@ServiceName(CatalogService_.CDS_NAME) // Map the service
public class CatalogServiceHandler implements EventHandler{

    private final CqnAnalyzer analyzer;

    CatalogServiceHandler(CdsModel model){
        this.analyzer = CqnAnalyzer.create(model);
    }
    
    @On(event = AddReviewContext.CDS_NAME)
    public void addReview(AddReviewContext context){   
        CqnSelect select = context.getCqn();
        String bookId = analyzer.analyze(select).targetKeys().get(Books.ID);
        System.out.println(bookId);

        Reviews review =  Reviews.create();
        review.setTitle(context.getTitle());
        review.setRating(context.getRating());
        review.setText(context.getText());
        context.setCompleted();
    }
}