package com.ministop.mypage;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ministop.products.Products;


@RequestMapping("mypage")
@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private IMyPageService mypageServ;
	
	@RequestMapping("creatQR")
	public String creatQR() {
		
		return "MyPage/ministopQRForm";
	}
	
	@RequestMapping("getminiRefri")
	public String getminiRefri(Model model) {
		List<Products> refriProductLst = mypageServ.getRefri("park");
		
		model.addAttribute("refriProductLst", refriProductLst);
		
		return "forward:/minirefri";
	}
}
