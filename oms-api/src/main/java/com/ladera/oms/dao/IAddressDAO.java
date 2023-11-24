package com.ladera.oms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ladera.com_utilities.model.AddressModel;


@Repository
public interface IAddressDAO extends JpaRepository<AddressModel, Long>{
          
}
