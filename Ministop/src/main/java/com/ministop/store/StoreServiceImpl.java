package com.ministop.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreServiceImpl implements IStoreService {

	@Autowired
	private IStoreDAO storeDAO;
	
	@Override
	public List<Store> getStore(String publicdong) {
		
		return storeDAO.getStore(publicdong);
	}

}
