package com.ladera.oms.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ladera.com_utilities.model.StockModel;

public interface IStockDAO extends JpaRepository<StockModel, Long> {

	StockModel findBySkuNumber(String skuNumber);

}
