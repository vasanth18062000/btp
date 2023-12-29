package com.example.javatutorial;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpClientAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpDestinationProperties;


@RestController
@RequestMapping(path = "/d1")

public class MainController {
	@GetMapping(path = "/hello")
	public ResponseEntity<String> getDroneMedications() {
		System.out.println("Hello World");
		return new ResponseEntity<String>("Hello World!s", HttpStatus.OK);
	}

	@RequestMapping(value = "/getProducts")
	public String getProducts() {
		System.out.println("Started getProduct Consumer");
		System.out.println("Testing data for consuming service");
		String apiKeyValue = "WonC6AcyZaI17BODefmoYnKfqlpzszdc";

		try {
		//HttpDestination destination = DestinationAccessor.getDestination("businesspartners-api").asHttp();
		     com.sap.cloud.sdk.cloudplatform.connectivity.HttpDestination destination =DestinationAccessor.getDestination("businesspartners-api").asHttp();
				System.out.println("destination");

	              org.apache.http.client.HttpClient httpClient = HttpClientAccessor.getHttpClient((HttpDestinationProperties) destination);
					System.out.println("httpClient");
					
	             HttpResponse httpResponse = null;
	             try {
						System.out.println("httpResponse1");
						HttpGet httpGet = new HttpGet();
						httpGet.addHeader("apikey",apiKeyValue);
	                 httpResponse = httpClient.execute(httpGet);
						System.out.println("httpResponse2");
	                 if (httpResponse.getStatusLine().getStatusCode() == 200) {
							System.out.println("200");

	                     BufferedReader reader = new BufferedReader(
	                             new InputStreamReader(httpResponse.getEntity().getContent()));
	                     StringBuilder result = new StringBuilder();
	                     String line = null;
	                     while ((line = reader.readLine()) != null) {
	                         result.append(line);
	                     }
	                     reader.close();
	                     return result.toString();
	                 }
						System.out.println("400");

	             } catch (IOException e) {
	                 return "IOException: " + e.getMessage();
	             }
			 // ErpHttpDestination destination = DestinationAccessor.getDestination("MyErpSystem").asHttp().decorate(DefaultErpHttpDestination::new);
			 


		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("testf");
		return "NOK";
	}

}