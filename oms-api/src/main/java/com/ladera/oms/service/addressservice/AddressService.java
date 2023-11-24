package com.ladera.oms.service.addressservice;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ladera.com_utilities.dto.AddressDTO;
import com.ladera.com_utilities.model.AddressModel;
import com.ladera.oms.dao.IAddressDAO;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class AddressService implements IAddressService {

	@Autowired
	IAddressDAO addressdao;

	// need to add condition to check if the address exist in database before adding address
	@Override
	public AddressDTO addAddress(AddressDTO addressDTO) {
		AddressModel addressModel = new AddressModel();
		addressModel.setCreatedBy(addressDTO.getFirstName() + " " + addressDTO.getLastName());
		addressModel.setCreatedDateTime(LocalDateTime.now());
		addressModel.setModifiedBy(addressDTO.getFirstName() + " " + addressDTO.getLastName());
		addressModel.setModifiedDatetime(LocalDateTime.now());

		BeanUtils.copyProperties(addressDTO, addressModel);

		addressdao.save(addressModel);
		log.info("address added");
		return addressDTO;
	}

	@Override
	public AddressDTO removeAddress(Long id) {
		Optional<AddressModel> addressModel = addressdao.findById(id);
		AddressDTO addressDTO = new AddressDTO();
		if (addressModel != null) {
			addressdao.deleteById(id);
			BeanUtils.copyProperties(addressModel, addressDTO);
			log.info("address removed");
			return addressDTO;
		} else {
			log.info("Customer not found");
			return addressDTO;

		}
	}

	@Override
	public AddressDTO getAddress(Long id) {
		AddressDTO addressDTO = new AddressDTO();
		Optional<AddressModel> addressModel = addressdao.findById(id);
		if (addressModel != null) {
			BeanUtils.copyProperties(addressModel.get(), addressDTO);
			log.info("address fetched");
			return addressDTO;
		} else {
			log.info("Customer not found");
			return addressDTO;
		}
	}

	@Override
	public List<AddressDTO> getAllAddress() {
		List<AddressModel> addressModels = addressdao.findAll();
		List<AddressDTO> addressDtosList = new ArrayList<AddressDTO>();

		for (AddressModel addressModelInList : addressModels) {
			AddressDTO addressdto = new AddressDTO();
			BeanUtils.copyProperties(addressModelInList, addressdto);
			addressDtosList.add(addressdto);
		}
		log.info("all address fetched");
		return addressDtosList;
	}

	@Override
	public AddressDTO updateAddress(AddressDTO addressDTO, Long id) {
		Optional<AddressModel> addressModel = addressdao.findById(id);
		if (addressModel != null) {
			if (addressDTO.getFirstName() != null) {
				addressModel.get().setFirstName(addressDTO.getFirstName());
			}
			if (addressDTO.getLastName() != null) {
				addressModel.get().setLastName(addressDTO.getLastName());
			}
			if (addressDTO.getDoorNumber() != null) {
				addressModel.get().setDoorNumber(addressDTO.getDoorNumber());
			}
			if (addressDTO.getStreet() != null) {
				addressModel.get().setStreet(addressDTO.getStreet());
			}
			if (addressDTO.getState() != null) {
				addressModel.get().setState(addressDTO.getState());
			}
			if (addressDTO.getPincode() != null) {
				addressModel.get().setPincode(addressDTO.getPincode());
			}
			if (addressDTO.getLandmark() != null) {
				addressModel.get().setLandmark(addressDTO.getLandmark());
			}
			if (addressDTO.getDistrict() != null) {
				addressModel.get().setDistrict(addressDTO.getDistrict());
			}
			if (addressDTO.getCountry() != null) {
				addressModel.get().setCountry(addressDTO.getCountry());
			}
			if (addressDTO.getCity() != null) {
				addressModel.get().setCity(addressDTO.getCity());
			}
			if (addressDTO.getAddressType() != null) {
				addressModel.get().setAddressType(addressDTO.getAddressType());
			}
			addressdao.save(addressModel.get());

			BeanUtils.copyProperties(addressModel, addressDTO);

			return addressDTO;
		} else {
			log.info(addressDTO.getId() + " address not found");
			return addressDTO;
			// need to throw custom exception
		}

	}

}
