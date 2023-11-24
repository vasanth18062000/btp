//package com.ladera.oms.model;
//
//import java.time.LocalDateTime;
//
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.OneToOne;
//import jakarta.persistence.Table;
//import lombok.Data;
//
//@Entity
//@Table(name = "stock")
//public class StockModel {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private Long id;
//	private String skuNumber;
//	private Long inStock;
//	private Long thresholdLimit;
//	private String location;
//	private String stockStatus;
//	private String createdBy;
//	private LocalDateTime createdDateTime;
//	private String modifiedBy;
//	private LocalDateTime modifiedDatetime;
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public Long getInStock() {
//		return inStock;
//	}
//
//	public void setInStock(Long inStock) {
//		this.inStock = inStock;
//	}
//
//	public Long getThresholdLimit() {
//		return thresholdLimit;
//	}
//
//	public void setThresholdLimit(Long thresholdLimit) {
//		this.thresholdLimit = thresholdLimit;
//	}
//
//	public String getLocation() {
//		return location;
//	}
//
//	public void setLocation(String location) {
//		this.location = location;
//	}
//
//	public String getStockStatus() {
//		return stockStatus;
//	}
//
//	public void setStockStatus(String stockStatus) {
//		this.stockStatus = stockStatus;
//	}
//
//	public String getCreatedBy() {
//		return createdBy;
//	}
//
//	public void setCreatedBy(String createdBy) {
//		this.createdBy = createdBy;
//	}
//
//	public LocalDateTime getCreatedDateTime() {
//		return createdDateTime;
//	}
//
//	public void setCreatedDateTime(LocalDateTime createdDateTime) {
//		this.createdDateTime = createdDateTime;
//	}
//
//	public String getModifiedBy() {
//		return modifiedBy;
//	}
//
//	public void setModifiedBy(String modifiedBy) {
//		this.modifiedBy = modifiedBy;
//	}
//
//	public LocalDateTime getModifiedDatetime() {
//		return modifiedDatetime;
//	}
//
//	public void setModifiedDatetime(LocalDateTime modifiedDatetime) {
//		this.modifiedDatetime = modifiedDatetime;
//	}
//
//	public String getSku_number() {
//		return skuNumber;
//	}
//
//	public void setSku_number(String sku_number) {
//		this.skuNumber = sku_number;
//	}
//
//	// @OneToOne
////	 private ProductModel product;
//}


