
package com.example.javatutorial.data;

import com.google.gson.annotations.SerializedName;

public class AddressResult {
	
	private Metadata __metadata;
	
    @SerializedName("AddressID")
    private String addressID;
    @SerializedName("Person")
    private String person;
    @SerializedName("OrdinalNumber")
    private String ordinalNumber;
    @SerializedName("IsDefaultEmailAddress")
    private boolean isDefaultEmailAddress;
    @SerializedName("EmailAddress")
    private String emailAddress;
    @SerializedName("SearchEmailAddress")
    private String searchEmailAddress;
    @SerializedName("AddressCommunicationRemarkText")
    private String addressCommunicationRemarkText;
	public Metadata get__metadata() {
		return __metadata;
	}
	public void set__metadata(Metadata __metadata) {
		this.__metadata = __metadata;
	}
	public String getAddressID() {
		return addressID;
	}
	public void setAddressID(String addressID) {
		this.addressID = addressID;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getOrdinalNumber() {
		return ordinalNumber;
	}
	public void setOrdinalNumber(String ordinalNumber) {
		this.ordinalNumber = ordinalNumber;
	}
	public boolean isDefaultEmailAddress() {
		return isDefaultEmailAddress;
	}
	public void setDefaultEmailAddress(boolean isDefaultEmailAddress) {
		this.isDefaultEmailAddress = isDefaultEmailAddress;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getSearchEmailAddress() {
		return searchEmailAddress;
	}
	public void setSearchEmailAddress(String searchEmailAddress) {
		this.searchEmailAddress = searchEmailAddress;
	}
	public String getAddressCommunicationRemarkText() {
		return addressCommunicationRemarkText;
	}
	public void setAddressCommunicationRemarkText(String addressCommunicationRemarkText) {
		this.addressCommunicationRemarkText = addressCommunicationRemarkText;
	}
	@Override
	public String toString() {
		return "AddressResult [__metadata=" + __metadata + ", addressID=" + addressID + ", person=" + person
				+ ", ordinalNumber=" + ordinalNumber + ", isDefaultEmailAddress=" + isDefaultEmailAddress
				+ ", emailAddress=" + emailAddress + ", searchEmailAddress=" + searchEmailAddress
				+ ", addressCommunicationRemarkText=" + addressCommunicationRemarkText + "]";
	}

	
}
