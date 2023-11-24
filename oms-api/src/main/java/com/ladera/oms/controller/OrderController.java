package com.ladera.oms.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ladera.com_utilities.model.OrderModel;

@RestController
@RequestMapping("/oms/order")
public class OrderController {

	@PostMapping("/addOrder")
	public void addOrder(@RequestBody OrderModel order) {
		System.out.println("order created");
	}

	@DeleteMapping("/removeOrder")
	public void removeOrderById(@RequestParam Integer id) {
		System.out.println("order removed");
	}

	@PutMapping("/updateOrderById")
	public void updateOrderById(@RequestBody OrderModel order, @RequestParam Integer id) {
		System.out.println("order updated");
	}

	@GetMapping("/getOrderById")
	public void getOrderById(@RequestParam Integer id) {
		System.out.println("order fetched");
	}
}
