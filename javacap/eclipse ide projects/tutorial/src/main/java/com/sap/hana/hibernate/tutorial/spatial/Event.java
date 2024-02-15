package com.sap.hana.hibernate.tutorial.spatial;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Event {

  @Id
  private int id;
  private Date day;
  private Date month;
  private int year;
  private double fractionDate;
  @ManyToOne(optional = true)
  private Actor actor1;
  @ManyToOne(optional = true)
  private Actor actor2;
  @ManyToOne
  private Action action;
  @Embedded
  @AttributeOverrides(value = { @AttributeOverride(name = "type", column = @Column(name = "actor1Geo_type")),
      @AttributeOverride(name = "fullName", column = @Column(name = "actor1Geo_fullName")),
      @AttributeOverride(name = "countryCode", column = @Column(name = "actor1Geo_countryCode")),
      @AttributeOverride(name = "adm1Code", column = @Column(name = "actor1Geo_adm1Code")),
      @AttributeOverride(name = "position", column = @Column(name = "actor1Geo_position")),
      @AttributeOverride(name = "featureId", column = @Column(name = "actor1Geo_featureId")) })
  private Geography actor1Geo;
  @Embedded
  @AttributeOverrides(value = { @AttributeOverride(name = "type", column = @Column(name = "actor2Geo_type")),
      @AttributeOverride(name = "fullName", column = @Column(name = "actor2Geo_fullName")),
      @AttributeOverride(name = "countryCode", column = @Column(name = "actor2Geo_countryCode")),
      @AttributeOverride(name = "adm1Code", column = @Column(name = "actor2Geo_adm1Code")),
      @AttributeOverride(name = "position", column = @Column(name = "actor2Geo_position")),
      @AttributeOverride(name = "featureId", column = @Column(name = "actor2Geo_featureId")) })
  private Geography actor2Geo;
  @Embedded
  @AttributeOverrides(value = { @AttributeOverride(name = "type", column = @Column(name = "actionGeo_type")),
      @AttributeOverride(name = "fullName", column = @Column(name = "actionGeo_fullName")),
      @AttributeOverride(name = "countryCode", column = @Column(name = "actionGeo_countryCode")),
      @AttributeOverride(name = "adm1Code", column = @Column(name = "actionGeo_adm1Code")),
      @AttributeOverride(name = "position", column = @Column(name = "actionGeo_position")),
      @AttributeOverride(name = "featureId", column = @Column(name = "actionGeo_featureId")) })

  private Geography actionGeo;
  private Date dateAdded;
  private String sourceURL;

  public void setDay(String day) {
    try {
      this.day = Helper.DAY_DATE_FORMAT.parse(day);
    } catch (ParseException e) {
      throw new IllegalArgumentException("Invalid day date: " + day, e);
    }
  }

  public void setMonth(String month) {
    try {
      this.month = Helper.MONTH_DATE_FORMAT.parse(month);
    } catch (ParseException e) {
      throw new IllegalArgumentException("Invalid month date: " + month, e);
    }
  }

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public Date getDay() {
	return day;
}

public void setDay(Date day) {
	this.day = day;
}

public Date getMonth() {
	return month;
}

public void setMonth(Date month) {
	this.month = month;
}

public int getYear() {
	return year;
}

public void setYear(int year) {
	this.year = year;
}

public double getFractionDate() {
	return fractionDate;
}

public void setFractionDate(double fractionDate) {
	this.fractionDate = fractionDate;
}

public Actor getActor1() {
	return actor1;
}

public void setActor1(Actor actor1) {
	this.actor1 = actor1;
}

public Actor getActor2() {
	return actor2;
}

public void setActor2(Actor actor2) {
	this.actor2 = actor2;
}

public Action getAction() {
	return action;
}

public void setAction(Action action) {
	this.action = action;
}

public Geography getActor1Geo() {
	return actor1Geo;
}

public void setActor1Geo(Geography actor1Geo) {
	this.actor1Geo = actor1Geo;
}

public Geography getActor2Geo() {
	return actor2Geo;
}

public void setActor2Geo(Geography actor2Geo) {
	this.actor2Geo = actor2Geo;
}

public Geography getActionGeo() {
	return actionGeo;
}

public void setActionGeo(Geography actionGeo) {
	this.actionGeo = actionGeo;
}

public Date getDateAdded() {
	return dateAdded;
}

public void setDateAdded(Date dateAdded) {
	this.dateAdded = dateAdded;
}

public String getSourceURL() {
	return sourceURL;
}

public void setSourceURL(String sourceURL) {
	this.sourceURL = sourceURL;
}
  
  
}
