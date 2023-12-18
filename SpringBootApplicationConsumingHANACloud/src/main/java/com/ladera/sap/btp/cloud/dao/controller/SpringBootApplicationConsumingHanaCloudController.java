package com.ladera.sap.btp.cloud.dao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.sap.btp.cloud.dao.service.NativeSQLRunner;

@RestController
public class SpringBootApplicationConsumingHanaCloudController {
	@Autowired
	NativeSQLRunner nativeSQLRunner;
	@RequestMapping("/")
	public String hello() {
		return "Hello!";
	}

	@RequestMapping("/testNativeSQL")
	public String testNativeSQL() {
		nativeSQLRunner.startTest();
		return "Test Native SQL Started!";
	}
}