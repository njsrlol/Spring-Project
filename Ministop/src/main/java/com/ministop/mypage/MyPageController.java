package com.ministop.mypage;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ministop.products.Products;

@SessionAttributes("sessionInfo")
@RequestMapping("mypage")
@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private IMyPageService mypageServ;
	
	@ModelAttribute("sessionInfo") // null처리 최초 세션 생성
	public Map<String, Object> getSessionInfo() {
		return new HashMap<String, Object>();
		// return new TreeMap<String, Object>();
	}
	
	@RequestMapping("creatQR")
	public String creatQR(Model model) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String datestr = sdf.format(cal.getTime());
		model.addAttribute("qrInfo", "TESTQRINFO"+"?date="+datestr);
		model.addAttribute("orderInfo", "ORDERINFO");
		
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
	


}
