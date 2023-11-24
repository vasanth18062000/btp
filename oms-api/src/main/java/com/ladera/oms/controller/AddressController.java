package com.ladera.oms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.com_utilities.dto.AddressDTO;
import com.ladera.oms.service.addressservice.IAddressService;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping("/oms/address")
@Log4j2
public class AddressController {
	@Autowired
	IAddressService addressService;

	@PostMapping("/addAddress")
	public ResponseEntity<AddressDTO> addAddress(@RequestBody AddressDTO address) {
		try {
			log.info("addAddress controller started");
			addressService.addAddress(address);
			log.info("addAddress controller ended");
			return new ResponseEntity<AddressDTO>(address, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@DeleteMapping("/removeAddress")
	public ResponseEntity<AddressDTO> removeProductById(@RequestParam Long id) {
		try {
			log.info("removeAddress controller started");
			AddressDTO removedAddress = addressService.removeAddress(id);
			log.info("removeAddress controller ended");
			return new ResponseEntity<AddressDTO>(removedAddress, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getAddress")
	public ResponseEntity<AddressDTO> getAddress(@RequestParam Long id) {
		try {
			log.info("getAddress controller started");
			AddressDTO address = addressService.getAddress(id);
			log.info("getAddress controller ended");
			return new ResponseEntity<AddressDTO>(address, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getAllAddress")
	public ResponseEntity<List<AddressDTO>> getAllAddress() {
		try {
			log.info("getAllAddress controller started");
			List<AddressDTO> addresses = addressService.getAllAddress();
			log.info("getAllAddress controller ended");
			return new ResponseEntity<List<AddressDTO>>(addresses, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@PutMapping("/updateAddress")
	public ResponseEntity<AddressDTO> updateProductById(@RequestBody AddressDTO address, @RequestParam Long id) {
		try {
			log.info("updateAddress controller started");
			AddressDTO updatedAddress = addressService.updateAddress(address, id);
			log.info("updateAddress controller ended");
			return new ResponseEntity<AddressDTO>(updatedAddress, HttpStatus.OK);
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}

}
