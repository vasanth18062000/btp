//package com.ladera.oms.dto;
//
//import java.io.Serializable;
//import java.time.LocalDate;
//import java.time.LocalDateTime;
//import java.util.List;
//
//import org.springframework.stereotype.Component;
//
//import com.ladera.oms.model.AddressModel;
//import com.ladera.oms.model.OrderModel;
//
//import jakarta.persistence.CascadeType;
//import jakarta.persistence.OneToMany;
//
//public class CustomerDTO implements Serializable {
//
//	private static final long serialVersionUID = 725858648l;
//
//	private String firstName;
//	private String lastName;
//	private String mobileNumber;
//	private String email;
//	private String encryptedPassword;
//	private LocalDate dateOfBirth;
//	private String gender;
//
////	private List<AddressDTO> addresses;
//
////	private List<OrderDTO> orders;
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
//	public static long getSerialversionuid() {
//		return serialVersionUID;
//	}
//
//	@Override
//	public String toString() {
//		return "CustomerDTO [firstName=" + firstName + ", lastName=" + lastName + ", mobileNumber=" + mobileNumber
//				+ ", email=" + email + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + "]";
//	}
//
//}



