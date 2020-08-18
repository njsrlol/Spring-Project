package com.ministop.recommend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RIServiceImpl implements RIService {
	
	@Autowired
	private RIDao idao;
	
	@Override
	public List<Store> radiusSearch(String longitude, String latitude) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("longitude", Float.parseFloat(longitude));
		map.put("latitude", Float.parseFloat(latitude));
		
		return idao.radiusSearch(map);
	}
	
}
