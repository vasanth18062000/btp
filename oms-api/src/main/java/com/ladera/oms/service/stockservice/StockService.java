package com.ladera.oms.service.stockservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ladera.com_utilities.dto.StockDTO;
import com.ladera.com_utilities.model.StockModel;
import com.ladera.oms.dao.IStockDAO;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class StockService implements IStockService {

	@Autowired
	IStockDAO stockdao;

	@Override
	public StockDTO addStock(StockDTO stockdto) {
		StockModel stockModel = new StockModel();
		if (stockdto.getSku_number() == null) {
			BeanUtils.copyProperties(stockdto, stockModel);
			stockdao.save(stockModel);
			log.info(stockdto.getSku_number() + " stock added");
			return stockdto;
		} else {
			log.info(stockdto.getSku_number() + " stock already exist");
			return stockdto;
		}
	}

	@Override
	public String removeStock(String skuNumber) {
		StockModel stockModel = stockdao.findBySkuNumber(skuNumber);
		if (stockModel != null) {
			stockdao.delete(stockModel);
			log.info("stock removed");
			return "found";
		} else {
			log.info("stock not removed");
			return "not found";
		}
	}

	@Override
	public StockDTO getStock(String skuNumber) {
		StockModel stockModel = stockdao.findBySkuNumber(skuNumber);
		StockDTO stockdto = new StockDTO();
		BeanUtils.copyProperties(stockModel, stockdto);
		log.info("stock fetched");
		return stockdto;
		// need to add condition if stock is not present
	}

	@Override
	public List<StockDTO> getAllStock() {
		List<StockModel> stockModels = stockdao.findAll();
		List<StockDTO> stockDtosList = new ArrayList<StockDTO>();

		for (StockModel stockModelInList : stockModels) {
			StockDTO stockdto = new StockDTO();
			BeanUtils.copyProperties(stockModelInList, stockdto);
			stockDtosList.add(stockdto);
		}
		log.info("all product fetched");
		return stockDtosList;
		// need to throw exception if there is not a single product to show
	}

	@Override
	public StockDTO updateStock(StockDTO stockdto, String skuNumber) {
		StockModel stockModel = stockdao.findBySkuNumber(skuNumber);
		if (stockModel != null) {
			if (stockdto.getInStock() != null)
				stockModel.setInStock(stockdto.getInStock());
			if (stockdto.getLocation() != null)
				stockModel.setLocation(stockdto.getLocation());
			if (stockdto.getSku_number() != null)
				stockModel.setSku_number(stockdto.getSku_number());
			if (stockdto.getThresholdLimit() != null)
				stockModel.setThresholdLimit(stockdto.getThresholdLimit());
			log.info(stockdto.getSku_number() + " stock updated");
			return stockdto;
		} else {
			log.info("stock not found");
			return stockdto;
		}
	}

}
