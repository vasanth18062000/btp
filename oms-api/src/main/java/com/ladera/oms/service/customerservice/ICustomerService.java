package com.ladera.oms.service.customerservice;

import java.util.List;

import com.ladera.com_utilities.dto.CustomerDTO;

public interface ICustomerService {

	public CustomerDTO addCustomer(CustomerDTO customerdto);

	public String removeCustomer(String email);
	
	public CustomerDTO getCustomer(String email);
	
	public CustomerDTO updateCustomer(CustomerDTO customerdto,String email);

	public List<CustomerDTO> getAllCustomer();

}
