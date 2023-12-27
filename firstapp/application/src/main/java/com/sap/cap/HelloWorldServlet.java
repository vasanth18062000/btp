package com.sap.cap;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpClientAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.HttpDestination;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationAccessException;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationNotFoundException;
import com.sap.cloud.sdk.datamodel.odata.client.exception.ODataException;
import com.sap.cloud.sdk.datamodel.odata.client.query.Order;
import com.sap.cloud.sdk.s4hana.connectivity.DefaultErpHttpDestination;
import com.sap.cloud.sdk.s4hana.connectivity.ErpHttpDestination;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartner;
import com.sap.cloud.sdk.s4hana.datamodel.odata.services.DefaultBusinessPartnerService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;



@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(HelloWorldServlet.class);

    private static final String CATEGORY_PERSON = "1";
    // TODO: uncomment the lines below and insert your API key, if you are using the sandbox service
    private static final String APIKEY_HEADER = "WonC6AcyZaI17BODefmoYnKfqlpzszdc";
    private static final String SANDBOX_APIKEY = "https://sandbox.api.sap.com/s4hanacloud/";
    private final ErpHttpDestination destination = DestinationAccessor.getDestination("northwind-api").asHttp().decorate(DefaultErpHttpDestination::new);

    @Override
    protected void doGet( final HttpServletRequest request, final HttpServletResponse response )
        throws IOException{
        try {
            final List<BUSINESS_PARTNER> businessPartners =
                    new DefaultBusinessPartnerService()
                            .getAllBusinessPartner()
                            .select(BusinessPartner.BUSINESS_PARTNER,
                                    BusinessPartner.LAST_NAME,
                                    BusinessPartner.FIRST_NAME,
                                    BusinessPartner.IS_MALE,
                                    BusinessPartner.IS_FEMALE)
                            .filter(BusinessPartner.BUSINESS_PARTNER_CATEGORY.eq(CATEGORY_PERSON))
                            .top(200)
                            // TODO: uncomment the line below, if you are using the sandbox service
                             .withHeader(APIKEY_HEADER, SANDBOX_APIKEY)
                            .executeRequest(destination);

            logger.info(String.format("Found %d business partner(s).", businessPartners.size()));

            response.setContentType("application/json");
            response.getWriter().write(new Gson().toJson(businessPartners));
        } catch (final ODataException e) {
            logger.error(e.getMessage(), e);
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write(e.getMessage());
        }
    }
}
