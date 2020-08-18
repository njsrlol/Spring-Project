package com.ministop.store;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("store")
@Controller
public class StoreController {

		private static final Logger logger = LoggerFactory.getLogger(StoreController.class);

		@Autowired
		private IStoreService storeServ;
		
		@RequestMapping("setmystore")
		public String setmystore() {
			return "Store/searchStoreForm";
		}
		
		@RequestMapping("searchStore")
		public String searchStore(Model model, @RequestParam("publicdong") String publicdong) {
			model.addAttribute("storeLst", storeServ.getStore(publicdong));
			
			return "Store/searchStoreForm";
		}
}
