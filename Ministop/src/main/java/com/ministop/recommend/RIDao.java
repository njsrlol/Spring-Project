package com.ministop.recommend;

import java.util.List;
import java.util.Map;

public interface RIDao {
	public List<Store> radiusSearch(Map<String, Object> map);
}
