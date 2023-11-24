package com.ladera.oms.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.com_utilities.dto.StockDTO;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping("/oms/stock")
@Log4j2
public class StockController {
	
	//need to write conditions for all crud operations based on the product id/code 

	@PostMapping("/addStock")
	public ResponseEntity<StockDTO> addStock(@RequestBody StockDTO stockdto) {
		log.info("addStock controller started");

		log.info("addStock controller ended");
		return null;
	}

	@DeleteMapping("/removeStock")
	public ResponseEntity<String> removeStock(@RequestParam Long id) {
		log.info("removeStock controller started");

		log.info("removeStock controller ended");
		return null;
	}
	
	@GetMapping("/getStock")
	public ResponseEntity<StockDTO> getStock(@RequestParam Long id) {
		log.info("getStock controller started");

		log.info("getStock controller ended");
		return null;
	}
	
	@GetMapping("/getAllStock")
	public ResponseEntity<List<StockDTO>> getAllStock(@RequestParam Long id) {
		log.info("getStock controller started");

		log.info("getStock controller ended");
		return null;
	}

	@PutMapping("/updateStock")
	public ResponseEntity<StockDTO> updateStock(@RequestBody StockDTO stock, @RequestParam Long id) {
		log.info("getStock controller started");

		log.info("getStock controller ended");
		return null;
	}

	

}
