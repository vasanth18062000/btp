package com.ladera.oms.service.productservice;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ladera.com_utilities.dto.ProductDTO;
import com.ladera.com_utilities.model.ProductModel;
import com.ladera.oms.dao.IProductDAO;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ProductService implements IProductService {
	@Autowired
	IProductDAO productdao;

	@Override
	public ProductDTO addProduct(ProductDTO productdto) {
		ProductModel fetchedProductModel = productdao.findByProductCode(productdto.getProductCode());

		if (fetchedProductModel == null) {
			ProductModel productModel = new ProductModel();
			BeanUtils.copyProperties(productdto, productModel);
			productdao.save(productModel);
			log.info(productdto.getProductCode() + " product added");
			return productdto;
		} else {
			log.info(productdto.getProductCode() + " product already exist");
			return productdto;
		}
	}

	@Override
	public String removeProduct(String productCode) {
		ProductModel fetchedProductModel = productdao.findByProductCode(productCode);
		if (Objects.nonNull(fetchedProductModel)) {
			if (fetchedProductModel.getProductStatus().equals("active"))
				fetchedProductModel.setProductStatus("inactive");
			productdao.save(fetchedProductModel);
			log.info(fetchedProductModel.getProductCode() + " product removed");
			return "found";
		} else {
			log.info("product not found");
			return "not found";
		}

	}

	@Override
	public ProductDTO getProduct(String productCode) {

		ProductModel fetchedProductModel = productdao.findByProductCode(productCode);
		ProductDTO productdto = new ProductDTO();
		if (Objects.nonNull(fetchedProductModel)) {
			BeanUtils.copyProperties(fetchedProductModel, productdto);
			log.info(fetchedProductModel.getProductCode() + " product fetched");
			return productdto;
		} else {
			log.info("product not found");
			return productdto;
			// need to throw exception if there is no product
		}

	}

	@Override
	public List<ProductDTO> getAllProduct() {
		List<ProductModel> productModel = productdao.findAll();
		List<ProductDTO> productDtosList = new ArrayList<ProductDTO>();

		for (ProductModel productModelInList : productModel) {
			ProductDTO productdto = new ProductDTO();
			BeanUtils.copyProperties(productModelInList, productdto);
			productDtosList.add(productdto);
		}
		log.info("all product fetched");
		return productDtosList;
		// need to throw exception if there is not a single product to show
	}

	@Override
	public ProductDTO updateProduct(ProductDTO productdto, String productCode) {
		ProductModel fetchedProductModel = productdao.findByProductCode(productCode);
		if (Objects.nonNull(fetchedProductModel)) {
			if (productdto.getBrand() != null)
				fetchedProductModel.setBrand(productdto.getBrand());
			if (productdto.getCategory() != null)
				fetchedProductModel.setCategory(productdto.getCategory());
			if (productdto.getPreOrderEndDateTime() != null)
				fetchedProductModel.setPreorderEndDateTime(productdto.getPreOrderEndDateTime());
			if (productdto.getPreorderlaunchDateTime() != null)
				fetchedProductModel.setPreorderlaunchDateTime(productdto.getPreorderlaunchDateTime());
			if (productdto.getProductCode() != null)
				fetchedProductModel.setProductCode(productdto.getProductCode());
			if (productdto.getProductDescription() != null)
				fetchedProductModel.setProductDescription(productdto.getProductDescription());
			if (productdto.getProductName() != null)
				fetchedProductModel.setProductName(productdto.getProductName());
			if (productdto.getPreorderQuantity() != 0L)
				fetchedProductModel.setPreorderQuantity(productdto.getPreorderQuantity());
			if (productdto.getPrice() != 0.0d)
				fetchedProductModel.setPrice(productdto.getPrice());
			if (productdto.getReturnPolicy() != null)
				fetchedProductModel.setReturnPolicy(productdto.getReturnPolicy());
			if (productdto.getWarranty() != null)
				fetchedProductModel.setWarranty(productdto.getWarranty());

			productdao.save(fetchedProductModel);
			log.info(fetchedProductModel.getProductCode()+" product updated");
			return productdto;
		} else {
			log.info("product not found");
			return productdto;
		}
	}

}
