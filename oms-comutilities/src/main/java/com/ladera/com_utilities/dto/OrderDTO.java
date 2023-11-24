package com.ladera.com_utilities.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

import com.ladera.com_utilities.model.CustomerModel;

import jakarta.persistence.ManyToOne;

public class OrderDTO implements Serializable {
	private static final long serialVersionUID = 7124805990L;
	private Integer id;
	private String orderNumber;
	private long orderedQuantity;
	private double totalPrice;
	private LocalDateTime orderDateTime;
	private LocalDate estimatedDeliveryDate;
	private String orderStatus;
	private String paymentType;
	private String createdBy;
	private LocalDateTime createdDateTime;
	private String modifiedBy;
	private LocalDateTime modifiedDatetime;
	private String orderHistory;
	private String deliveryType;
	private String giftMessage;
	private double discountPrice;

//	   private CustomerModel customer;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public long getOrderedQuantity() {
		return orderedQuantity;
	}

	public void setOrderedQuantity(long orderedQuantity) {
		this.orderedQuantity = orderedQuantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public LocalDateTime getOrderDateTime() {
		return orderDateTime;
	}

	public void setOrderDateTime(LocalDateTime orderDateTime) {
		this.orderDateTime = orderDateTime;
	}

	public LocalDate getEstimatedDeliveryDate() {
		return estimatedDeliveryDate;
	}

	public void setEstimatedDeliveryDate(LocalDate estimatedDeliveryDate) {
		this.estimatedDeliveryDate = estimatedDeliveryDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public LocalDateTime getCreatedDateTime() {
		return createdDateTime;
	}

	public void setCreatedDateTime(LocalDateTime createdDateTime) {
		this.createdDateTime = createdDateTime;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public LocalDateTime getModifiedDatetime() {
		return modifiedDatetime;
	}

	public void setModifiedDatetime(LocalDateTime modifiedDatetime) {
		this.modifiedDatetime = modifiedDatetime;
	}

	public String getOrderHistory() {
		return orderHistory;
	}

	public void setOrderHistory(String orderHistory) {
		this.orderHistory = orderHistory;
	}

	public String getDeliveryType() {
		return deliveryType;
	}

	public void setDeliveryType(String deliveryType) {
		this.deliveryType = deliveryType;
	}

	public String getGiftMessage() {
		return giftMessage;
	}

	public void setGiftMessage(String giftMessage) {
		this.giftMessage = giftMessage;
	}

	public double getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(double discountPrice) {
		this.discountPrice = discountPrice;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
