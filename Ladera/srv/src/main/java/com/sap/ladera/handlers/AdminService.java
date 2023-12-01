import java.util.HashMap;
import java.util.Map;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;

public class AdminService implements EventHandler{

    private Map<Object, Map<String,Object>> map = new HashMap<>();

    @On(event = CqnService.EVENT_READ, entity = "AdminService.Product")
    public void onRead(CdsReadEventContext context) {
        context.setResult(map.values());
    }
    
}