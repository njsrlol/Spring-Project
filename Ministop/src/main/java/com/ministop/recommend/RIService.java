package com.ministop.recommend;

import java.util.List;

public interface RIService {
	public List<Store> radiusSearch(String longitude, String latitude);
}
