package com.ministop.recommend;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("recommend")
@Controller
public class RController {
	private static final Logger Logger = LoggerFactory.getLogger(RController.class);

	@Autowired
	private RIService iServ;

	@RequestMapping("radiusSearch")
	public String radiusSearch(@RequestParam(value = "longitude", defaultValue = "") String longitude,
			@RequestParam(value = "latitude", defaultValue = "") String latitude, Model model) {
		List<Store> storeLst = iServ.radiusSearch(longitude, latitude);
	
		Logger.warn(storeLst.size()+"");
		Logger.warn(longitude);
		Logger.warn(latitude);
		model.addAttribute("storeLst", storeLst);
		return "forward:/recommend";
	}

}
