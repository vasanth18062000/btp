package com.ladera;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.ladera.com_utilities")
public class OrdermanagementsystemComutilitiesApplication {

	public static void main(String[] args) {
		SpringApplication.run(OrdermanagementsystemComutilitiesApplication.class, args);
	}

}
