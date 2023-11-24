package com.ladera.com_utilities.model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="product")
public class ProductModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String productCode;
	private String productName;
	private String category;
	private double price;
	private String productDescription;
	private String brand;
	private String productStatus;
	private boolean isReturnable;
	private String returnPolicy;
	private String warranty;
	private String createdBy;
	private LocalDateTime createdDateTime;
	private String modifiedBy;
	private LocalDateTime modifiedDatetime;
	private LocalDateTime preorderlaunchDateTime;
	private long preorderQuantity;
	private LocalDateTime preorderEndDateTime;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	public boolean getisReturnable() {
		return isReturnable;
	}
	public void setIsReturnable(boolean isReturnable) {
		this.isReturnable = isReturnable;
	}
	public String getReturnPolicy() {
		return returnPolicy;
	}
	public void setReturnPolicy(String returnPolicy) {
		this.returnPolicy = returnPolicy;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
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
	public LocalDateTime getPreorderlaunchDateTime() {
		return preorderlaunchDateTime;
	}
	public void setPreorderlaunchDateTime(LocalDateTime preorderlaunchDateTime) {
		this.preorderlaunchDateTime = preorderlaunchDateTime;
	}
	public long getPreorderQuantity() {
		return preorderQuantity;
	}
	public void setPreorderQuantity(long preorderQuantity) {
		this.preorderQuantity = preorderQuantity;
	}
	public LocalDateTime getPreorderEndDateTime() {
		return preorderEndDateTime;
	}
	public void setPreorderEndDateTime(LocalDateTime preorderEndDateTime) {
		this.preorderEndDateTime = preorderEndDateTime;
	}
	
  }
