package com.ladera.com_utilities.response;

import org.springframework.stereotype.Component;

import com.ladera.com_utilities.enums.error.ErrorType;

@Component
public class Response<T> {
	String responseMessage;
	ErrorType errorType;
	String errorCode;
	T responseObject;

	public String getResponseMessage() {
		return responseMessage;
	}

	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}

	public ErrorType getErrorType() {
		return errorType;
	}

	public void setErrorType(ErrorType errorType) {
		this.errorType = errorType;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public T getResponseObject() {
		return responseObject;
	}

	public void setResponseObject(T responseObject) {
		this.responseObject = responseObject;
	}

}
