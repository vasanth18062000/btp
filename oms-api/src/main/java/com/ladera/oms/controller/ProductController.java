package com.ladera.oms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.com_utilities.dto.ProductDTO;
import com.ladera.oms.service.productservice.ProductService;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping("/oms/product")
@Log4j2
public class ProductController {

	@Autowired
	ProductService productService;

	@PostMapping("/addProduct")
	public ResponseEntity<ProductDTO> addProduct(@RequestBody ProductDTO productdto) {
		try {
			log.info("addProduct controller started");
			productService.addProduct(productdto);
			log.info("addProduct controller ended");
			return new ResponseEntity<ProductDTO>(productdto, HttpStatus.OK);
			// need to add condition if the product already exist
		} catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity<ProductDTO>(productdto, HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}

	@PutMapping("/removeProduct")
	public ResponseEntity<String> removeProduct(@RequestParam String productCode) {
		try {
			log.info("removeProduct controller started");
			String removeProduct = productService.removeProduct(productCode);
			log.info("removeProduct controller ended");
			if (removeProduct.equals("found"))
				return new ResponseEntity<String>("product details removed", HttpStatus.OK);
			else
				return new ResponseEntity<String>("product not found", HttpStatus.NOT_FOUND);
		} catch (Exception e) {
			log.info(e.getMessage());
			return new ResponseEntity<String>("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getProduct")
	public ResponseEntity<ProductDTO> getProduct(@RequestParam String productCode) {
		try {
			log.info("getProduct controller started");
			ProductDTO product = productService.getProduct(productCode);
			log.info("getProduct controller ended");
			return new ResponseEntity<ProductDTO>(product, HttpStatus.OK);
			// need to add condition if there is no product to fetch
		} catch (Exception e) {
			log.info(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getAllProduct")
	public ResponseEntity<List<ProductDTO>> getAllProduct() {
		try {
			log.info("getAllProduct controller started");
			List<ProductDTO> products = productService.getAllProduct();
			log.info("getAllProduct controller ended");
			return new ResponseEntity<List<ProductDTO>>(products, HttpStatus.OK);
			// need to add condition if there is not a single product to fetch
		} catch (Exception e) {
			log.info(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}

	@PutMapping("/updateProduct")
	public ResponseEntity<ProductDTO> updateProduct(@RequestBody ProductDTO product, @RequestParam String productCode) {
		try {
			log.info("updateProduct controller started");
			ProductDTO updatedProductdto = productService.updateProduct(product, productCode);
			log.info("updateProduct controller ended");
			return new ResponseEntity<ProductDTO>(updatedProductdto, HttpStatus.OK);
			// need to add condition if there is no product to update
		} catch (Exception e) {
			log.info(e.getMessage());
			return new ResponseEntity("Internal server error", HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}

}
