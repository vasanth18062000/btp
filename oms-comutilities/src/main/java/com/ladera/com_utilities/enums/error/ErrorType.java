package com.ladera.com_utilities.enums.error;

public enum ErrorType {
	EXISTINGUSER("EC01"), 
	NOTFOUND("EC02");

	private String errorCode;

	private ErrorType(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorCode() {
		return this.errorCode;
	}

}
