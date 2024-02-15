package com.sap.hana.hibernate.tutorial.spatial;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Action {

  private boolean rootEvent;
  @Id
  private String code;
  private String baseCode;
  private String rootCode;
  private int quadClass;
  private double goldsteinScale;
  private int numMentions;

  public Action() {
    super();
  }

  public Action(boolean rootEvent, String code, String baseCode, String rootCode, int quadClass,
      double goldsteinScale, int numMentions, int numSources, int numArticles, double avgTone) {
    super();
    this.rootEvent = rootEvent;
    this.code = code;
    this.baseCode = baseCode;
    this.rootCode = rootCode;
    this.quadClass = quadClass;
    this.goldsteinScale = goldsteinScale;
    this.numMentions = numMentions;
   
  }

public boolean isRootEvent() {
	return rootEvent;
}

public void setRootEvent(boolean rootEvent) {
	this.rootEvent = rootEvent;
}

public String getCode() {
	return code;
}

public void setCode(String code) {
	this.code = code;
}

public String getBaseCode() {
	return baseCode;
}

public void setBaseCode(String baseCode) {
	this.baseCode = baseCode;
}

public String getRootCode() {
	return rootCode;
}

public void setRootCode(String rootCode) {
	this.rootCode = rootCode;
}

public int getQuadClass() {
	return quadClass;
}

public void setQuadClass(int quadClass) {
	this.quadClass = quadClass;
}

public double getGoldsteinScale() {
	return goldsteinScale;
}

public void setGoldsteinScale(double goldsteinScale) {
	this.goldsteinScale = goldsteinScale;
}

public int getNumMentions() {
	return numMentions;
}

public void setNumMentions(int numMentions) {
	this.numMentions = numMentions;
}
  
  
}
