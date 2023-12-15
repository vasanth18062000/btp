package com.sap.hana.hibernate.tutorial.simple;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;



@Entity
public class Project {
  @ManyToMany
  private List<Developer> contributors;

  @Id
  private String name;

  @ManyToOne
  private Developer projectOwner;

  @OneToMany(mappedBy = "project")
  private List<Version> versions;

  protected Project() {
  }

  public Project(String name) {
    this.name = name;
  }

  public void addContributor(Developer contributor) {
    if (this.contributors == null) {
      this.contributors = new ArrayList<>();
    }
    this.contributors.add(contributor);
  }

  public void addVersion(Version version) {
    if (this.versions == null) {
      this.versions = new ArrayList<>();
    }
    this.versions.add(version);
  }

public List<Developer> getContributors() {
	return contributors;
}

public void setContributors(List<Developer> contributors) {
	this.contributors = contributors;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Developer getProjectOwner() {
	return projectOwner;
}

public void setProjectOwner(Developer projectOwner) {
	this.projectOwner = projectOwner;
}

public List<Version> getVersions() {
	return versions;
}

public void setVersions(List<Version> versions) {
	this.versions = versions;
}
  
}
