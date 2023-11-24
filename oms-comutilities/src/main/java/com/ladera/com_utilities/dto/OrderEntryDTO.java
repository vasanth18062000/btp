package com.ladera.com_utilities.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import com.ladera.com_utilities.model.OrderModel;
import com.ladera.com_utilities.model.ProductModel;

import jakarta.persistence.ManyToOne;

public class OrderEntryDTO implements Serializable {

	private static final long serialVersionUID = 3342350985L;
	
	private Integer id;
	private long Quantity;
	private double unitPrice;
	private double shippingCharges;
	private double discountRate;
	private double totalPrice;
	private String returnStatus;
	private String returnDescription;
	private String refundStatus;
	private String exchangeStatus;
	private String createdBy;
	private LocalDateTime createdDateTime;
	private String modifiedBy;
	private LocalDateTime modifiedDatetime;
	

//	private ProductModel product;

	private OrderModel order;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public long getQuantity() {
		return Quantity;
	}

	public void setQuantity(long quantity) {
		Quantity = quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public double getShippingCharges() {
		return shippingCharges;
	}

	public void setShippingCharges(double shippingCharges) {
		this.shippingCharges = shippingCharges;
	}

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getReturnStatus() {
		return returnStatus;
	}

	public void setReturnStatus(String returnStatus) {
		this.returnStatus = returnStatus;
	}

	public String getReturnDescription() {
		return returnDescription;
	}

	public void setReturnDescription(String returnDescription) {
		this.returnDescription = returnDescription;
	}

	public String getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}

	public String getExchangeStatus() {
		return exchangeStatus;
	}

	public void setExchangeStatus(String exchangeStatus) {
		this.exchangeStatus = exchangeStatus;
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

	public OrderModel getOrder() {
		return order;
	}

	public void setOrder(OrderModel order) {
		this.order = order;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
