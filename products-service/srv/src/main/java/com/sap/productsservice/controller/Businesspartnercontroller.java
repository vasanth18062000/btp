

package com.sap.productsservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sap.cds.ql.Select;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.cds.CqnService;

import cds.gen.api_business_partner.ABusinessPartnerAddress;
import cds.gen.api_business_partner.ABusinessPartnerAddress_;
import cds.gen.api_business_partner.ABusinessPartner_;

@RestController("/api")
public class Businesspartnercontroller {

@Autowired
@Qualifier(ABusinessPartner_.CDS_NAME)
CqnService bupa;

@GetMapping("/address")
public void getData(){

CqnSelect select = Select.from(ABusinessPartnerAddress_.class)
    .where(a -> a.BusinessPartner().eq("4711"));

ABusinessPartnerAddress address = bupa.run(select)
    .single(ABusinessPartnerAddress.class);

    System.out.println(address.toString());
}
    
}
