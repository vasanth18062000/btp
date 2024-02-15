package customer.north;

import java.io.IOException;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.util.EntityUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.javatutorial.data.BusinessPartnerResponse;
import com.example.javatutorial.entity.BusinessParterReponse;
import com.google.gson.Gson;
import com.sap.cloud.sdk.cloudplatform.connectivity.Destination;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpClientAccessor;

@RestController
@RequestMapping(path = "/d1")

public class MainController {
	@GetMapping(path = "/hello")
	public ResponseEntity<String> getDroneMedications() {
		System.out.println("Hello World");
		return new ResponseEntity<String>("Hello World!s", HttpStatus.OK);
	}

	@RequestMapping(value = "/getProducts", method = RequestMethod.GET)
	public BusinessParterReponse getProducts() {
		System.out.println("Started getProduct Consumer");
		System.out.println("Testing data for consuming service");
		String apiKeyValue = "WonC6AcyZaI17BODefmoYnKfqlpzszdc";

		try {
			// HttpDestination destination =
			// DestinationAccessor.getDestination("businesspartners-api").asHttp();
			Destination destination = DestinationAccessor.getDestination("businesspartners-api");
			System.out.println("destination");

			org.apache.http.client.HttpClient httpClient = HttpClientAccessor.getHttpClient((Destination) destination);
			System.out.println("httpClient");

			HttpResponse httpResponse = null;
//			try {
//				System.out.println("httpResponse1");
//				HttpGet httpGet = new HttpGet();
//
//				httpGet.addHeader("Accept", "application/json");
//				httpGet.addHeader("apikey", apiKeyValue);
//				httpResponse = httpClient.execute(httpGet);
//				System.out.println("httpResponse2");
//
//				if (httpResponse.getStatusLine().getStatusCode() == 200) {
//					String jsonResponse = EntityUtils.toString(httpResponse.getEntity());
//
//					System.out.println("200");
//					System.out.println(httpResponse.getEntity().getContent().toString());
//					Gson gson = new Gson();
//					BusinessParterReponse response = gson.fromJson(jsonResponse, BusinessParterReponse.class);
//					System.out.println("Count: " + response.d.__count);
//					return response;
//
//				}
//
//			} catch (IOException e) {
//				System.out.println("IOException: " + e.getMessage());
//			}
//			// ErpHttpDestination destination =
//			// DestinationAccessor.getDestination("MyErpSystem").asHttp().decorate(DefaultErpHttpDestination::new);
//
		} catch (Exception e) {
			System.err.println("Exception Occured at destination connecting:" + ExceptionUtils.getMessage(e));
			System.err.println("Exception trace:" + ExceptionUtils.getStackTrace(e));
		}
		System.out.println("testf");
		return null;
	}

}