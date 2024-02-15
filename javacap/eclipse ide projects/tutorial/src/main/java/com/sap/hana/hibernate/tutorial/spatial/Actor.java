package com.sap.hana.hibernate.tutorial.spatial;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Actor {

  @Id
  private String code;
  private String name;
  private String countryCode;
  private String knownGroupCode;
  private String ethnicCode;
  private String religion1Code;
  private String religion2Code;
  private String type1Code;
  private String type2Code;
  private String type3Code;

  public Actor() {
    super();
  }

  public Actor(String code, String name, String countryCode, String knownGroupCode, String ethnicCode,
      String religion1Code, String religion2Code, String type1Code, String type2Code, String type3Code) {
    super();
    this.code = code;
    this.name = name;
    this.countryCode = countryCode;
    this.knownGroupCode = knownGroupCode;
    this.ethnicCode = ethnicCode;
    this.religion1Code = religion1Code;
    this.religion2Code = religion2Code;
    this.type1Code = type1Code;
    this.type2Code = type2Code;
    this.type3Code = type3Code;
  }

public String getCode() {
	return code;
}

public void setCode(String code) {
	this.code = code;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getCountryCode() {
	return countryCode;
}

public void setCountryCode(String countryCode) {
	this.countryCode = countryCode;
}

public String getKnownGroupCode() {
	return knownGroupCode;
}

public void setKnownGroupCode(String knownGroupCode) {
	this.knownGroupCode = knownGroupCode;
}

public String getEthnicCode() {
	return ethnicCode;
}

public void setEthnicCode(String ethnicCode) {
	this.ethnicCode = ethnicCode;
}

public String getReligion1Code() {
	return religion1Code;
}

public void setReligion1Code(String religion1Code) {
	this.religion1Code = religion1Code;
}

public String getReligion2Code() {
	return religion2Code;
}

public void setReligion2Code(String religion2Code) {
	this.religion2Code = religion2Code;
}

public String getType1Code() {
	return type1Code;
}

public void setType1Code(String type1Code) {
	this.type1Code = type1Code;
}

public String getType2Code() {
	return type2Code;
}

public void setType2Code(String type2Code) {
	this.type2Code = type2Code;
}

public String getType3Code() {
	return type3Code;
}

public void setType3Code(String type3Code) {
	this.type3Code = type3Code;
}
  
  
}
