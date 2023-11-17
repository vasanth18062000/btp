import org.springframework.stereotype.Component;

import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.ServiceName;

import java.util.HashMap;
import java.util.Map;


import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.annotations.On;


@Component
@ServiceName("BookStoreService")
public class BookService implements EventHandler{

    private Map<Object, Map<String, Object>> products = new HashMap<>();

    @On(event = CqnService.EVENT_CREATE, entity = "BookStoreService.Books")
    public void onCreate(CdsCreateEventContext context) {
        context.getCqn().entries().forEach(e -> Books.put(e.get("ID"), e));
        context.setResult(context.getCqn().entries());

        @On(event = CqnService.EVENT_READ, entity = "AdminService.Products")
        public void onRead(CdsReadEventContext context) {
            context.setResult(products.values());
        }
    }


}