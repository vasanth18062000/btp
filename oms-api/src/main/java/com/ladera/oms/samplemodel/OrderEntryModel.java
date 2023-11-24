//package com.ladera.oms.model;
//
//import java.time.LocalDateTime;
//
//import org.springframework.stereotype.Component;
//
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.ManyToOne;
//import jakarta.persistence.Table;
//import lombok.Data;
//
//@Data
//@Entity
//@Table(name="orderentry")
//public class OrderEntryModel {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private Long id;
//	private long Quantity;
//	private double unitPrice;
//	private double shippingCharges;
//	private double discountRate;
//	private double totalPrice;
//	private String returnStatus;
//	private String returnDescription;
//	private String refundStatus;
//	private String exchangeStatus;
//	private String createdBy;
//	private LocalDateTime createdDateTime;
//	private String modifiedBy;
//	private LocalDateTime modifiedDatetime;
//	
//	
////	//@ManyToOne
////	private ProductModel product;
////	
////	//@ManyToOne
////	private OrderModel order;
//	
//}


