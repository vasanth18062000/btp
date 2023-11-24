package com.ladera.com_utilities.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

import com.ladera.com_utilities.enums.customer.CustomerStatus;
import com.ladera.com_utilities.enums.customer.CustomerStatusType;
import com.ladera.com_utilities.enums.customer.CustomerType;
import com.ladera.com_utilities.enums.customer.Gender;
import com.ladera.com_utilities.model.AddressModel;
import com.ladera.com_utilities.model.OrderModel;

import jakarta.persistence.CascadeType;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
import jakarta.validation.constraints.Size;

public class CustomerDTO implements Serializable {

	private static final long serialVersionUID = 725858648l;

	//@NotBlank(message = "firstname is mandatory")
	//@Size(min = 1, message = "required")
	private String firstName;
	//@Range(min = 1, max = 20)
	private String lastName;

//	@NotBlank(message = "mobile number is mandatory")
//	@Min(1)
//	@Max(20)
//	@PositiveOrZero
	private String mobileNumber;

	@jakarta.validation.constraints.Email(message = "email should be valid")

	private String email;

	// @Pattern(regexp = "^[a-zA-Z0-9]{6,10}$")
	private String encryptedPassword;

	private LocalDate dateOfBirth;
    
	
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Enumerated(EnumType.STRING)
	private CustomerStatusType customerstatus;
	
	@Enumerated(EnumType.STRING)
	private CustomerType customertype;
	
	

//	private List<AddressDTO> addresses;

//	private List<OrderDTO> orders;

	public CustomerStatusType getCustomerstatus() {
		return customerstatus;
	}

	public void setCustomerstatus(CustomerStatusType customerstatus) {
		this.customerstatus = customerstatus;
	}

	public CustomerType getCustomertype() {
		return customertype;
	}

	public void setCustomertype(CustomerType customertype) {
		this.customertype = customertype;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CustomerDTO [firstName=" + firstName + ", lastName=" + lastName + ", mobileNumber=" + mobileNumber
				+ ", email=" + email + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + "]";
	}

}
