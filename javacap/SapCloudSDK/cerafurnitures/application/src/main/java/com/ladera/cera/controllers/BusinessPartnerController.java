package com.ladera.cera.controllers;

import com.google.gson.Gson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import com.sap.cloud.sdk.cloudplatform.connectivity.Destination;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationAccessException;
import com.sap.cloud.sdk.datamodel.odata.client.exception.ODataException;
import com.sap.cloud.sdk.datamodel.odata.helper.Order;

import com.sap.cloud.sdk.tutorial.datamodel.odata.namespaces.businesspartner.BusinessPartner;
import com.sap.cloud.sdk.tutorial.datamodel.odata.services.DefaultBusinessPartnerService;

@RestController
@RequestMapping( "/businesspartners" )
public class BusinessPartnerController
{
   private static final Logger logger = LoggerFactory.getLogger(BusinessPartnerController.class);
   // TODO: uncomment the lines below and insert your API key, if you are using the sandbox service
   // private static final String APIKEY_HEADER = "apikey";
   // private static final String SANDBOX_APIKEY = "";
   private static final String CATEGORY_PERSON = "1";
   private static final String DESTINATION_NAME = "MyErpSystem";

   @RequestMapping( method = RequestMethod.GET , produces = MediaType.APPLICATION_JSON_VALUE)
   public ResponseEntity<?> getBusinessPartner()
   {
      try {
         final Destination destination = DestinationAccessor.getDestination(DESTINATION_NAME);

         final List<BusinessPartner> businessPartners =
                 new DefaultBusinessPartnerService()
                         .getAllBusinessPartner()
                         .select(BusinessPartner.BUSINESS_PARTNER,
                                 BusinessPartner.LAST_NAME,
                                 BusinessPartner.FIRST_NAME,
                                 BusinessPartner.MALE,
                                 BusinessPartner.FEMALE,
                                 BusinessPartner.CREATED_ON
                         )
                         .filter(BusinessPartner.BP_CATEGORY.eq(CATEGORY_PERSON))
                         .orderBy(BusinessPartner.LAST_NAME, Order.ASC)
                         .top(200)
                         // TODO: uncomment the line below, if you are using the sandbox service
                         // .withHeader(APIKEY_HEADER, SANDBOX_APIKEY)
                         .executeRequest(destination);

         return ResponseEntity.ok( new Gson().toJson(businessPartners));
      } catch (final DestinationAccessException e) {
         logger.error(e.getMessage(), e);
         return ResponseEntity.internalServerError().body("Failed to fetch destination.");
      } catch (final ODataException e) {
         logger.error(e.getMessage(), e);
         return ResponseEntity.internalServerError().body("Failed to fetch business partners.");
      } catch (final Exception e) {
         logger.error(e.getMessage(), e);
         return ResponseEntity.internalServerError().body("Unexpected error occurred while fetching business partners.");
      }
   }

}
