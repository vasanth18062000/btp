package com.ladera.oms.service.productservice;

import java.util.List;

import com.ladera.com_utilities.dto.ProductDTO;

public interface IProductService {
	public ProductDTO addProduct(ProductDTO product);

	public String removeProduct(String productCode);

	public ProductDTO getProduct(String productCode);

	public List<ProductDTO> getAllProduct();

	public ProductDTO updateProduct(ProductDTO productdto, String productCode);

}
