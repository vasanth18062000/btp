package com.sap.hana.hibernate.tutorial.simple;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToOne;

@IdClass(value = VersionPK.class)
@Entity
public class Version {
  @Id
  private String versionNumber;
  @Id
  @ManyToOne
  private Project project;
  private Date releaseDate;

  protected Version() {
  }

  public Version(String versionNumber, Project project) {
    this.versionNumber = versionNumber;
    this.project = project;
    this.releaseDate = new Date();
  }

public String getVersionNumber() {
	return versionNumber;
}

public void setVersionNumber(String versionNumber) {
	this.versionNumber = versionNumber;
}

public Project getProject() {
	return project;
}

public void setProject(Project project) {
	this.project = project;
}

public Date getReleaseDate() {
	return releaseDate;
}

public void setReleaseDate(Date releaseDate) {
	this.releaseDate = releaseDate;
}
}