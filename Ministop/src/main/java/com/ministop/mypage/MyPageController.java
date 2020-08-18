package com.ministop.mypage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("mypage")
@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@RequestMapping("creatQR")
	public String creatQR() {
		
		return "MyPage/ministopQRForm";
	}

}
