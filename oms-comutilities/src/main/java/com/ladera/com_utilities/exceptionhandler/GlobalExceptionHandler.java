package com.ladera.com_utilities.exceptionhandler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.ladera.com_utilities.response.Response;

@RestControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(ArithmeticException.class)
	public ResponseEntity<Response> getArithmeticException(ArithmeticException a) {
		a.getMessage();
		return new ResponseEntity<Response>(HttpStatus.BAD_REQUEST);
	}

}
