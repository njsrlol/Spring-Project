package com.ministop.mypage;


import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String getminiRefri(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String loginId = (String)session.getAttribute("loginId");
		List<Products> refriProductLst = mypageServ.getRefri(loginId);
		model.addAttribute("refriProductLst", refriProductLst);
		
		return "forward:/minirefri";
	}
	
	@RequestMapping("addtocart/{productNum}")
	public String addtocart(HttpServletRequest request,
			@PathVariable String productNum) {
		HttpSession session = request.getSession();
		ArrayList<String> cartlist = (ArrayList<String>)session.getAttribute("cartLst");
		
		if(cartlist==null) {
			cartlist = new ArrayList<String>();
			session.setAttribute("cartLst", cartlist);			
		}
		int stored = 0;
		for(int i=0; i<cartlist.size(); i++) {
			logger.warn(cartlist.get(i));
			if(productNum.contentEquals(cartlist.get(i)))
				stored++;
		}
		if(stored==0)
		cartlist.add(productNum);
		
		return "redirect:/productdetail";
	}
	
	@RequestMapping("tocart")
	public String tocart(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		ArrayList<String> cartlist = (ArrayList<String>)session.getAttribute("cartLst");
		
		if(cartlist==null) {
			model.addAttribute("emptyInfo", "장바구니가 비어있습니다.");
		}
		
		return "forward:/cart";
	}
	
	@RequestMapping("removecart")
	public String removecart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("cartLst");
		
		return "redirect:/cart";
	}
}
