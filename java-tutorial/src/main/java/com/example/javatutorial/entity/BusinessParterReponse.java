package com.example.javatutorial.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class BusinessParterReponse implements Serializable {

	public BusinessPartnerDto d;
}
