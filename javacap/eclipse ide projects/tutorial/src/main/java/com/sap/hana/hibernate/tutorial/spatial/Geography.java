package com.sap.hana.hibernate.tutorial.spatial;

import javax.persistence.Embeddable;

import org.geolatte.geom.C2D;
import org.geolatte.geom.Point;

@Embeddable
public class Geography {

  private int type;
  private String fullName;
  private String countryCode;
  private String adm1Code;
  private Point<C2D> position;
  private int featureId;

  public Geography() {
    super();
  }

  public Geography(int type, String fullName, String countryCode, String adm1Code, String latitude, String longitude, int featureIdType, String featureId) {
    super();
    this.type = type;
    this.fullName = fullName;
    this.countryCode = countryCode;
    this.adm1Code = adm1Code;
    this.setPosition(latitude, longitude);
    this.setFeatureId(featureIdType, featureId);
  }

  public void setPosition(String latitude, String longitude) {
    if (latitude.isEmpty() || longitude.isEmpty()) {
      return;
    }
    C2D location = new C2D(Helper.parseDouble(latitude), Helper.parseDouble(longitude));
    Point<C2D> position = new Point<C2D>(location, Helper.DEFAULT_CRS);
    this.setPosition(position);
  }

  public void setFeatureId(int featureIdType, String featureId) {
    if (featureIdType > 2) {
      this.featureId = Helper.parseInt(featureId);
    }
  }

public int getType() {
	return type;
}

public void setType(int type) {
	this.type = type;
}

public String getFullName() {
	return fullName;
}

public void setFullName(String fullName) {
	this.fullName = fullName;
}

public String getCountryCode() {
	return countryCode;
}

public void setCountryCode(String countryCode) {
	this.countryCode = countryCode;
}

public String getAdm1Code() {
	return adm1Code;
}

public void setAdm1Code(String adm1Code) {
	this.adm1Code = adm1Code;
}

public Point<C2D> getPosition() {
	return position;
}

public void setPosition(Point<C2D> position) {
	this.position = position;
}

public int getFeatureId() {
	return featureId;
}

public void setFeatureId(int featureId) {
	this.featureId = featureId;
}
  
  
}
