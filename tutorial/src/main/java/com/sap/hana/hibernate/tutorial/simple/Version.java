package com.sap.hana.hibernate.tutorial.simple;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.ManyToOne;

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
}
