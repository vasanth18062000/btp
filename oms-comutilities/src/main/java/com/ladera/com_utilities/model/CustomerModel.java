package com.ladera.com_utilities.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ladera.com_utilities.enums.customer.CustomerStatus;
import com.ladera.com_utilities.enums.customer.CustomerStatusType;
import com.ladera.com_utilities.enums.customer.CustomerType;
import com.ladera.com_utilities.enums.customer.Gender;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

import io.swagger.v3.oas.annotations.media.Schema;

@Entity
@Schema(name = "customer detail table", description = "customer schema")
@Table(name = "Customer")
public class CustomerModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String firstName;
	private String lastName;
	private String mobileNumber;
	private String email;
	private String encryptedPassword;
	private LocalDate dateOfBirth;
	
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Enumerated(EnumType.STRING)
	private CustomerStatusType customerStatus;
	
	@Enumerated(EnumType.STRING)
	private CustomerType customerType;
	
	private String createdBy;
	private LocalDateTime createdDateTime;
	private String modifiedBy;
	private LocalDateTime modifiedDatetime;

	// @OneToMany
	// private List<AddressModel> addresses;

	// @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
	// private List<OrderModel> orders;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEncryptedPassword() {
		return encryptedPassword;
	}

	public void setEncryptedPassword(String encryptedPassword) {
		this.encryptedPassword = encryptedPassword;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public CustomerStatusType getCustomerStatus() {
		return customerStatus;
	}

	public void setCustomerStatus(CustomerStatusType inactive) {
		this.customerStatus = inactive;
	}

	public CustomerType getCustomerType() {
		return customerType;
	}

	public void setCustomerType(CustomerType customerType) {
		this.customerType = customerType;
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
}
