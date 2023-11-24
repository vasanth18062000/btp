//package com.ladera.oms.model;
//
//import java.time.LocalDate;
//import java.time.LocalDateTime;
//
//import org.springframework.stereotype.Component;
//
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.JoinColumn;
//import jakarta.persistence.ManyToOne;
//import jakarta.persistence.Table;
//import lombok.Data;
//
//@Data
//@Entity
//@Table(name="order")
//public class OrderModel{
//	 @Id
//	 @GeneratedValue(strategy = GenerationType.AUTO)
//	 @Column(insertable=false, updatable=false)
//	   private Long id;
//	   private String orderNumber;
//	   private long orderedQuantity;
//	   private double totalPrice;
//	   private LocalDateTime orderDateTime;
//	   private LocalDate estimatedDeliveryDate;
//	   private String orderStatus;
//	   private String paymentType;
//	   private String createdBy;
//	   private LocalDateTime createdDateTime;
//	   private String modifiedBy;
//	   private LocalDateTime modifiedDatetime;
//	   private String orderHistory;
//	   private String deliveryType;
//	   private String giftMessage;
//	   private double discountPrice;
//	   
//	  // @ManyToOne
////	   private CustomerModel customer;
//	    
//	
//	
//	
//}


