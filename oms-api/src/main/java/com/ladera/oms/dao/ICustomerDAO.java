package com.ladera.oms.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ladera.com_utilities.model.CustomerModel;

@Repository
public interface ICustomerDAO extends JpaRepository<CustomerModel, Integer> {

	Optional<CustomerModel> findByEmail(String email);

	CustomerModel getByEmail(String email);
	

}
