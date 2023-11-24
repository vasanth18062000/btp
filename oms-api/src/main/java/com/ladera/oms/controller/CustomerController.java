package com.ladera.oms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.com_utilities.dto.CustomerDTO;
import com.ladera.com_utilities.enums.error.ErrorType;
import com.ladera.com_utilities.response.Response;
import com.ladera.oms.service.customerservice.CustomerService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.Email;
import lombok.extern.log4j.Log4j2;

@RestController

@RequestMapping("/oms/customer")
@Log4j2
@Component
@Validated
@CrossOrigin(originPatterns = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT,
		RequestMethod.DELETE }, allowedHeaders = "Content-type")
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@Autowired
	Response<CustomerDTO> response;

//	private static org.apache.logging.log4j.Logger logger = org.apache.logging.log4j.LogManager
//			.getLogger(CustomerController.class);

	@PostMapping("/addCustomer")
	@Tag(description = "add new customers to the database", name = "addingCustomer")
	@Operation(summary = "addNewCustomer method", description = "method to add new customer")
	@ApiResponses(value = { @ApiResponse(responseCode = "200", description = "request accepted"),
			@ApiResponse(responseCode = "400", description = "bad gateway error") })

	// need to add condition to check if the customer is already present or not
	public ResponseEntity<Response<CustomerDTO>> addCustomer(@RequestBody CustomerDTO customerdto) {
		try {
			log.info("addCustomer controller started");
			CustomerDTO savedCustomerDTO = customerService.addCustomer(customerdto);
			log.info("addCustomer controller ended");
			if (savedCustomerDTO.getEncryptedPassword() == null) {
				response.setResponseMessage("customer added");
				response.setErrorCode(null);
				response.setErrorType(null);
				response.setResponseObject(savedCustomerDTO);
				return new ResponseEntity<Response<CustomerDTO>>(response, HttpStatus.OK);
			} else
				response.setResponseMessage("customer details already exist");
			response.setErrorType(ErrorType.EXISTINGUSER);
			response.setErrorCode(ErrorType.EXISTINGUSER.getErrorCode());
			response.setResponseObject(customerdto);
			return new ResponseEntity<Response<CustomerDTO>>(response, HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity<Response<CustomerDTO>>(response, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/removeCustomer")
	public ResponseEntity<String> removeCustomer(@RequestParam(value = "mail") @Email String email) {
		try {
			log.info("removeCustomer controller started");
			String isValidCustomer = customerService.removeCustomer(email);
			log.info("removeCustomer controller ended");
			if (isValidCustomer.equals("found")) {
				return new ResponseEntity<String>("customer details removed", HttpStatus.OK);
			} else {
				return new ResponseEntity<String>("Customer not found", HttpStatus.NOT_FOUND);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity<String>("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getCustomer")
	public ResponseEntity<CustomerDTO> getCustomer(@RequestParam(value = "email") String email) {
		try {
			log.info("getCustomer controller started");
			CustomerDTO customer = customerService.getCustomer(email);
			log.info("getCustomer controller ended");
			return new ResponseEntity<CustomerDTO>(customer, HttpStatus.OK);
			// need to add condition if there is no customer to fetch
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}

	@GetMapping("/getAllCustomer")
	public ResponseEntity<List<CustomerDTO>> getAllCustomer() {
		try {
			log.info("getAllCustomer controller started");
			List<CustomerDTO> allCustomerlist = customerService.getAllCustomer();
			log.info("getAllCustomer controller ended");

			return new ResponseEntity<List<CustomerDTO>>(allCustomerlist, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// need to write condition for every cascade update in all tables
	@PutMapping("/updateCustomer")
	public ResponseEntity<CustomerDTO> updateCustomer(@RequestBody CustomerDTO customerdto,
			@RequestParam String email) {
		try {
			log.info("updateCustomer controller started");
			customerService.updateCustomer(customerdto, email);
			log.info("updateCustomer controller ended");
			return new ResponseEntity<CustomerDTO>(customerdto, HttpStatus.OK);
			// need to add condition if there is no customer to update
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/login")
	public void login(@RequestParam String email, String encryptedPassword) {
		System.out.println("login successful");
	}
	
//	@getMapping("/hired")
//	public void hired() {
//		
//	}
	
}
