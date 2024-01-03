package com.example.javatutorial.entity;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class ResultDto implements Serializable {

	public Metadata __metadata;
	public String AddressID;
	public String Person;
	public String OrdinalNumber;
	public boolean IsDefaultEmailAddress;
	public String EmailAddress;
	public String SearchEmailAddress;
	public String AddressCommunicationRemarkText;
}
