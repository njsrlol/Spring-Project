package com.ministop.main;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private Map<String, String> pageMap;
	
	public HomeController() {
		pageMap = new HashMap<String, String>();
		
		//jeongsoo
		pageMap.put("membership", "Membership/memberForm");
		pageMap.put("login", "Membership/loginForm");
		pageMap.put("findInfo", "Membership/findInfoForm");
		pageMap.put("ownerLogin", "Membership/ownerLoginForm");
		pageMap.put("ownerMainForm", "Owner/ownerMainForm");
		pageMap.put("ownerHistory", "Owner/ownerHistoryForm");
		pageMap.put("recommend", "Recommend/recommendForm");
		pageMap.put("popularity", "Recommend/popularityForm");
		
		//minji
		pageMap.put("mainpage", "Products/mainpage");
		pageMap.put("freshfood", "Products/freshfood");
		pageMap.put("miniPro", "Products/miniPro");
		
		pageMap.put("setmystore", "Store/searchStoreForm");
		pageMap.put("mypage", "MyPage/mypage");
		pageMap.put("creatQR", "MyPage/ministopQRForm");
		pageMap.put("minirefri", "MyPage/miniRefri");
		pageMap.put("order", "Order/orderForm");
		pageMap.put("cart", "Order/cartForm");
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		
		return "redirect:/mainpage";
	}
	
	@RequestMapping(value = "/{formPath}")
	public String path(Model model, @PathVariable String formPath) {
		model.addAttribute("formPath", "form/"+formPath);
		
		return "index";
	}
	
	@RequestMapping(value = "/form/{formPath}")
	public String path(@PathVariable String formPath) {
		
		return pageMap.get(formPath);
	}

    @RequestMapping("/createCode.do")
    public ModelAndView createCode(Model model, @RequestParam String content){
           ModelAndView mv = new ModelAndView("qrcodeview", "content", content);
         
           return mv;
    }
}
