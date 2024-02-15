package customer.northwindexternalservice;
 
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.http.HttpClient;
import java.net.http.HttpResponse;


import org.apache.http.client.methods.HttpGet;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sap.cloud.sdk.cloudplatform.connectivity.HttpClientAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpDestination;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationNotFoundException;

@RestController
public class NorthwindExternalServiceController {
@RequestMapping(value = "/getProducts")
	    public String getProducts() {
	        String DESTINATION_NAME = "NORTHWIND-DEV-DESTINATION"; 
	        
	        System.out.println("Inside the endpoint");
	                                                        
	        try {
	            HttpDestination destination =
	                    com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor.getDestination(DESTINATION_NAME).asHttp();
	            org.apache.http.client.HttpClient client = HttpClientAccessor.getHttpClient(destination);
	            HttpResponse httpResponse = null;
	            try {
	                httpResponse = (HttpResponse) client.execute(new HttpGet());
	                if (((org.apache.http.HttpResponse) httpResponse).getStatusLine().getStatusCode() == 200) {
	                    BufferedReader reader = new BufferedReader(
	                            new InputStreamReader(((org.apache.http.HttpResponse) httpResponse).getEntity().getContent()));
	                    StringBuilder result = new StringBuilder();
	                    String line = null;
	                    while ((line = reader.readLine()) != null) {
	                        result.append(line);
	                    }
	                    reader.close();
	                    return result.toString();
	                }
	            } catch (IOException e) {
	                return "IOException: " + e.getMessage();
	            }
	        } catch (Exception e) {
	            return e.getMessage();
	        }
	        return null;
	    }
	    
	}


