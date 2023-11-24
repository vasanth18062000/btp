package com.ladera.oms.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ladera.com_utilities.model.ProductModel;

public interface IProductDAO extends JpaRepository<ProductModel, Long> {

	public ProductModel findByProductCode(String productCode);

}
