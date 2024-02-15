package com.sap.hana.hibernate.tutorial.simple;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Developer {
  @Id
  private String eMailAddress;
  private String name;
  @OneToMany(mappedBy = "projectOwner")
  private List<Project> ownedProjects;

  protected Developer() {
  }

  public Developer(String eMailAddress) {
    this.eMailAddress = eMailAddress;
  }

public String geteMailAddress() {
	return eMailAddress;
}

public void seteMailAddress(String eMailAddress) {
	this.eMailAddress = eMailAddress;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public List<Project> getOwnedProjects() {
	return ownedProjects;
}

public void setOwnedProjects(List<Project> ownedProjects) {
	this.ownedProjects = ownedProjects;
}
  
  
}
