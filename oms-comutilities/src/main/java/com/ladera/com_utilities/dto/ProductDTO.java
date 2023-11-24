package com.ladera.com_utilities.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import com.ladera.com_utilities.model.ProductModel;

public class ProductDTO implements Serializable {
	private static final long serialVersionUID = 7782597038l;
	private Integer id;
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
	private LocalDateTime preOrderEndDateTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

	public boolean isReturnable() {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public LocalDateTime getPreOrderEndDateTime() {
		return preOrderEndDateTime;
	}

	public void setPreOrderEndDateTime(LocalDateTime preOrderEndDateTime) {
		this.preOrderEndDateTime = preOrderEndDateTime;
	}

	@Override
	public String toString() {
		return "ProductDTO [id=" + id + ", productCode=" + productCode + ", productName=" + productName + ", category="
				+ category + ", price=" + price + ", productDescription=" + productDescription + ", brand=" + brand
				+ ", isReturnable=" + isReturnable + ", returnPolicy=" + returnPolicy + ", warranty=" + warranty
				+ ", preorderlaunchDateTime=" + preorderlaunchDateTime + ", preorderQuantity=" + preorderQuantity
				+ ", preOrderEndDateTime=" + preOrderEndDateTime + "]";
	}

}
