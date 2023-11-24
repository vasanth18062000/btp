package com.ladera.oms.service.customerservice;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ladera.com_utilities.dto.CustomerDTO;
import com.ladera.com_utilities.enums.customer.CustomerStatus;
import com.ladera.com_utilities.enums.customer.CustomerStatusType;
import com.ladera.com_utilities.enums.customer.CustomerType;
import com.ladera.com_utilities.model.CustomerModel;
import com.ladera.oms.dao.ICustomerDAO;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CustomerService implements ICustomerService {

	@Autowired
	ICustomerDAO customerdao;

	@Override
	public CustomerDTO addCustomer(CustomerDTO customerdto) {
		String isCustomerExistByEmail = customerdto.getEmail();
		CustomerModel fectchedCustomerModel = customerdao.findByEmail(isCustomerExistByEmail).orElse(null);
		if (fectchedCustomerModel == null) {

			CustomerModel customerModel = new CustomerModel();
			customerModel.setCreatedBy(customerdto.getFirstName() + " " + customerdto.getLastName());
			customerModel.setCreatedDateTime(LocalDateTime.now());
			customerModel.setModifiedBy(customerdto.getFirstName() + customerdto.getLastName());
			customerModel.setModifiedDatetime(LocalDateTime.now());
			customerModel.setCustomerStatus(CustomerStatusType.valueOf("ACTIVE"));
			customerModel.setCustomerType(CustomerType.REGULAR);

			BeanUtils.copyProperties(customerdto, customerModel);
			customerdao.save(customerModel);
			log.info(customerdto.getEmail() + " customer added succesfully");
			customerdto.setEncryptedPassword(null);
			return customerdto;
		} else {
			log.info("customer already exist");
			return customerdto;
		}

	}

	// need to add one additional condition for customer is fetched or not

	public String removeCustomer(String email) {
		 Optional<CustomerModel> findByEmail = customerdao.findByEmail(email);
		 if(findByEmail.isPresent()) {
				if (findByEmail.get().getCustomerStatus().toString().equals("ACTIVE")) {
					findByEmail.get().setCustomerStatus(CustomerStatusType.INACTIVE);
					customerdao.save(findByEmail.get());
					log.info(findByEmail.get().getEmail() + " customer removed");
					return "found";
		 } else {
			 return "Customer already deactivated";
		 }
	
		} else {
			log.info(findByEmail.get().getEmail() + " customer not found");
			return "not found";
		}
	}

	// need to throw custom exception for customer not found
	@Override
	public CustomerDTO getCustomer(String email) {
		CustomerModel customerModel = customerdao.findByEmail(email).orElse(null);
		CustomerDTO customerDTO = new CustomerDTO();
		BeanUtils.copyProperties(customerModel, customerDTO);
		if (Objects.nonNull(customerModel)) {
			log.info(customerModel.getEmail() + " customer fetched");
			return customerDTO;
		} else {
			log.info(customerDTO.getEmail() + " customer not found");
			return customerDTO;
			// need to throw custom exception
		}
	}

	@Override
	public List<CustomerDTO> getAllCustomer() {
		List<CustomerModel> customerModels = customerdao.findAll();
		System.out.println(customerModels);
		List<CustomerDTO> customerDtosList = new ArrayList<CustomerDTO>();

		for (CustomerModel customerModelInList : customerModels) {
			CustomerDTO customerdto = new CustomerDTO();
			BeanUtils.copyProperties(customerModelInList, customerdto);
			customerDtosList.add(customerdto);
		}
		log.info("all customers fetched");
		return customerDtosList;
	}

	@Override
	public CustomerDTO updateCustomer(CustomerDTO customerdto, String email) {
		CustomerModel customerModel = customerdao.findByEmail(email).orElse(null);
		if (Objects.nonNull(customerModel)) {
			if (customerdto.getFirstName() != null) {
				customerModel.setFirstName(customerdto.getFirstName());
			}
			if (customerdto.getLastName() != null) {
				customerModel.setLastName(customerdto.getLastName());
			}
			if (customerdto.getDateOfBirth() != null) {
				customerModel.setDateOfBirth(customerdto.getDateOfBirth());
			}
			if (customerdto.getEmail() != null) {
				customerModel.setEmail(customerdto.getEmail());
			}
			if (customerdto.getEncryptedPassword() != null) {
				customerModel.setEncryptedPassword(customerdto.getEncryptedPassword());
			}
			if (customerdto.getMobileNumber() != null) {
				customerModel.setMobileNumber(customerdto.getMobileNumber());
			}

			customerdao.save(customerModel);
			BeanUtils.copyProperties(customerModel, customerdto);

			return customerdto;
		} else {
			log.info(customerdto.getEmail() + " customer not found");
			return customerdto;
			// need to throw custom exception
		}
	}
}
