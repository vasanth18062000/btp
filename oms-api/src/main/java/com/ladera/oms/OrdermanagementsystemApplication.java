package com.ladera.oms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "order management system"))
@EntityScan("com.ladera.com_utilities")
@ComponentScan(basePackages = "com.ladera.oms")
@ComponentScan(basePackages = "package com.ladera.com_utilities.response")
@ComponentScan(basePackages = "package com.ladera.oms.service.odata")
//@ComponentScan(basePackages = {"com.ladera.oms.dao","com.ladera.oms.service"})
public class OrdermanagementsystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(OrdermanagementsystemApplication.class, args);
	}
}
