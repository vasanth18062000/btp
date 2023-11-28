package customer.sap_btp_project.handlers;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.Result;
import com.sap.cds.ql.Insert;
import com.sap.cds.ql.cqn.AnalysisResult;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnInsert;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.environment.CdsProperties.Persistence;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.catalogservice.AddReviewContext;
import cds.gen.catalogservice.CatalogService_;
import cds.gen.catalogservice.Reviews;
import cds.gen.catalogservice.Reviews_;
import cds.gen.toadslop.bookshop.Books;


@Component
@ServiceName(CatalogService_.CDS_NAME)
public class CatalogServiceHandler implements EventHandler{
    
    private final CqnAnalyzer analyzer;
    private final PersistenceService db;  

    public CatalogServiceHandler(PersistenceService db,CdsModel model) {
        this.db=db;
        this.analyzer = CqnAnalyzer.create(model);
    }

    @On(event = AddReviewContext.CDS_NAME)
    public void addReview(AddReviewContext context) {

        CqnSelect select = context.getCqn();
        String bookId =(String)analyzer.analyze(select).targetKeys().get(Books.ID);
        Map<String,Object> targetKeys = analyzer.analyze(select).targetKeys();
        System.out.println(targetKeys);

        Reviews reviews = Reviews.create();
        reviews.setBookId(bookId);
        reviews.setTitle(context.getTitle());
        reviews.setRating(context.getRating());
        reviews.setText(context.getText());

        CqnInsert reviewInsert = Insert.into(Reviews_.CDS_NAME).entry(reviews);
        Reviews newReviews = db.run(reviewInsert).single(Reviews.class);

        context.setResult(newReviews);

    }
}
