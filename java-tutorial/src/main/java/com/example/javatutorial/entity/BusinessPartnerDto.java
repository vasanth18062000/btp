package com.example.javatutorial.entity;

import java.io.Serializable;
import java.util.ArrayList;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
@Data
public class BusinessPartnerDto implements Serializable {

	public String __count;
	public ArrayList<ResultDto> results;
}
