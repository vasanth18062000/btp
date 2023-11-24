package com.ladera.oms.service.stockservice;

import java.util.List;

import com.ladera.com_utilities.dto.StockDTO;

public interface IStockService {
	public StockDTO addStock(StockDTO stockdto);

	public String removeStock(String skuNumber);

	public StockDTO getStock(String skuNumber);

	public List<StockDTO> getAllStock();

	public StockDTO updateStock(StockDTO stockdto,String skuNumber);
}
