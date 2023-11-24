//package com.ladera.oms.model;
//
//import java.time.LocalDate;
//import java.time.LocalDateTime;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
//import jakarta.persistence.CascadeType;
//import jakarta.persistence.Entity;
//import jakarta.persistence.FetchType;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.OneToMany;
//import jakarta.persistence.Table;
//import lombok.Data;
//import com.ladera.oms.base.ModelBase;
//
//import io.swagger.v3.oas.annotations.media.Schema;
//
//@Entity
//@Schema(name = "customer detail table", description = "customer schema")
//@Table(name = "Customer")
//public class CustomerModel {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private Long id;
//	private String firstName;
//	private String lastName;
//	private String mobileNumber;
//	private String email;
//	private String encryptedPassword;
//	private LocalDate dateOfBirth;
//	private String gender;
//	private String customerStatus;
//	private String customerType;
//	private String createdBy;
//	private LocalDateTime createdDateTime;
//	private String modifiedBy;
//	private LocalDateTime modifiedDatetime;
//
//	// @OneToMany
//	// private List<AddressModel> addresses;
//
//	// @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
//	// private List<OrderModel> orders;
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public String getFirstName() {
//		return firstName;
//	}
//
//	public void setFirstName(String firstName) {
//		this.firstName = firstName;
//	}
//
//	public String getLastName() {
//		return lastName;
//	}
//
//	public void setLastName(String lastName) {
//		this.lastName = lastName;
//	}
//
//	public String getMobileNumber() {
//		return mobileNumber;
//	}
//
//	public void setMobileNumber(String mobileNumber) {
//		this.mobileNumber = mobileNumber;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	public String getEncryptedPassword() {
//		return encryptedPassword;
//	}
//
//	public void setEncryptedPassword(String encryptedPassword) {
//		this.encryptedPassword = encryptedPassword;
//	}
//
//	public LocalDate getDateOfBirth() {
//		return dateOfBirth;
//	}
//
//	public void setDateOfBirth(LocalDate dateOfBirth) {
//		this.dateOfBirth = dateOfBirth;
//	}
//
//	public String getGender() {
//		return gender;
//	}
//
//	public void setGender(String gender) {
//		this.gender = gender;
//	}
//
//	public String getCustomerStatus() {
//		return customerStatus;
//	}
//
//	public void setCustomerStatus(String customerStatus) {
//		this.customerStatus = customerStatus;
//	}
//
//	public String getCustomerType() {
//		return customerType;
//	}
//
//	public void setCustomerType(String customerType) {
//		this.customerType = customerType;
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
//}


