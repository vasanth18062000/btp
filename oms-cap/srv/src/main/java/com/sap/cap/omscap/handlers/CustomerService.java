package com.sap.cap.omscap.handlers;

import com.sap.cds.services.handler.EventHandler;
import java.util.*;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

@Component
@ServiceName("AdminService")
public class CustomerService implements EventHandler {
    private Map<Object, Map<String, Object>> products = new HashMap<>();

    @On(event = CqnService.EVENT_CREATE, entity = "AdminService.Customer")
    public void onCreate(CdsCreateEventContext context) {
        context.getCqn().entries().forEach(e -> products.put(e.get("ID"), e));
        context.setResult(context.getCqn().entries());
    }

    @On(event = CqnService.EVENT_READ, entity = "AdminService.Customer")
    public void onRead(CdsReadEventContext context) {
        context.setResult(products.values());
    }
}
