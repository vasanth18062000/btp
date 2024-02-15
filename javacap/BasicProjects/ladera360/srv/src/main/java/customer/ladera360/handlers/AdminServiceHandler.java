package main.java.customer.ladera360.handlers;


import com.sap.cds.services.handler.annotations.On;
import org.springframework.stereotype.Component;
import com.sap.cds.services.handler.annotations.ServiceName;
import cds.gen.adminservice.HelloContext;
import com.sap.cds.services.handler.EventHandler;

@Component
@ServiceName("AdminService")
public class AdminServiceHandler implements EventHandler{

  @On(event = "hello",entity="User")
  
  public void sayHello(HelloContext context) {
    System.out.println ("reached hello event");

    String name = context.getTo();
    String greeting = "Hello " + name + "!";
    context.setResult(greeting);
  }
    
}
