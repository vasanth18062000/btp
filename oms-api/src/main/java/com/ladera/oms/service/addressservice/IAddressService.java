package com.ladera.oms.service.addressservice;

import java.util.List;

import com.ladera.com_utilities.dto.AddressDTO;

public interface IAddressService {

	public AddressDTO addAddress(AddressDTO addressDTO);

	public AddressDTO removeAddress(Long id);

	public AddressDTO getAddress(Long id);

	public AddressDTO updateAddress(AddressDTO addressDTO, Long id);

	public List<AddressDTO> getAllAddress();

}
