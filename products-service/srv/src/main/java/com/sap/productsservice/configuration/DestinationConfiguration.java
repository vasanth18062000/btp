package com.sap.productsservice.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

import com.sap.cds.services.environment.CdsProperties.Environment;
import com.sap.cloud.sdk.cloudplatform.connectivity.DefaultDestinationLoader;
import com.sap.cloud.sdk.cloudplatform.connectivity.DefaultHttpDestination;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;




public class DestinationConfiguration {

@Autowired
Environment environment;

@Value("Rbex3QT1544HBufXBAfGEmaG27EgHBDE")
private String apiKey;

@EventListener
void applicationReady(ApplicationReadyEvent ready) {
 // int port = Integer.valueOf(Environment.getProperty("local.server.port"));
  DefaultHttpDestination mockDestination = DefaultHttpDestination
  .builder("https://sandbox.api.sap.com/s4hanacloud")
  .header("APIKey", apiKey)
  .name("s4-business-partner-api").build();

  DefaultDestinationLoader loader = new DefaultDestinationLoader();
  loader.registerDestination(mockDestination);
  DestinationAccessor.prependDestinationLoader(loader);
}

    
}
