package com.sap.hana.hibernate.tutorial.simple;

import java.io.Serializable;
import java.util.Objects;

public class VersionPK implements Serializable {

	private static final long serialVersionUID = 1L;

	private String versionNumber;
	private String project;

	public String getVersionNumber() {
		return versionNumber;
	}

	public void setVersionNumber(String versionNumber) {
		this.versionNumber = versionNumber;
	}

	public String getProject() {
		return project;
	}

	@Override
	public int hashCode() {
		return Objects.hash(project, versionNumber);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		VersionPK other = (VersionPK) obj;
		return Objects.equals(project, other.project) && Objects.equals(versionNumber, other.versionNumber);
	}

	public void setProject(String project) {
		this.project = project;
	}

}
