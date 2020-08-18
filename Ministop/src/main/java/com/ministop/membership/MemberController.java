package com.ministop.membership;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.HandlerMapping;

@SessionAttributes("sessionInfo")
@RequestMapping("membership") // membership/XXXXX
@Controller
public class MemberController {
	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberIService iServ;

	@ModelAttribute("sessionInfo") // null처리 최초 세션 생성
	public Map<String, Object> getSessionInfo() {
		return new HashMap<String, Object>();
		// return new TreeMap<String, Object>();
	}

	@RequestMapping("isExistID")
	public String isExistID(Member memberq, Model model, @ModelAttribute("sessionInfo") Map<String, Object> sInfo) {
		model.addAttribute("msg", iServ.isExistID(memberq, sInfo));
		model.addAttribute("memberq", memberq);

		return "forward:/membership";
	}

	@RequestMapping("reqAuthNum")
	public String reqAuthNum(Member memberq, Model model,
			@ModelAttribute("sessionInfo") Map<String, Object> sInfo) {
		iServ.reqAuthNum(sInfo);
		/* model.addAttribute("sessionAuthNum", iServ.reqAuthNum()); */
		model.addAttribute("msg", "인증번호를 이메일로 전송하였습니다.");
		model.addAttribute("memberq", memberq);

		return "forward:/membership";
	}

	@RequestMapping("authNumConfirm")
	public String authNumConfirm(Member memberq, Model model,
			/* @ModelAttribute("sessionAuthNum") String sAuthNum, */
			@RequestParam("authNum") String reqAuthNum, @ModelAttribute("sessionInfo") Map<String, Object> sInfo) {
		/* String sAuthNum = (String)model.getAttribute("sessionAuthNum"); */
		model.addAttribute("msg", iServ.authNumConfirm(sInfo, reqAuthNum));
		model.addAttribute("memberq", memberq);

		return "forward:/membership";
	}

	@RequestMapping("searchPostCode")
	public String searchPostCode() {
		return "MemberForm/searchPostCodeForm";
	}

	@RequestMapping("memberProc")
	public String memberProc(Member memberq, Model model,
			@ModelAttribute("sessionInfo") Map<String, Object> sInfo) {
		if (iServ.memberProc(memberq, sInfo))
			return "forward:/login";

		model.addAttribute("msg", "회원가입에 실패하였습니다.");
		return "forward:/membership";
	}

	@RequestMapping({ "searchID", "searchPW" })
	public String searchIDPW(Model model, HttpServletRequest req) {
		String path = (String) req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		Logger.warn(path);
		model.addAttribute("path", path);
		return "forward:/findInfo";
	}

	@RequestMapping("findInfoProc")
	public String findInfoProc(@RequestParam("email") String email,
			@RequestParam(value = "id", required = false) String id, Model model) {
		model.addAttribute("msg", iServ.findInfoProc(email, id));
		return "forward:/login";
	}

	@RequestMapping("loginProc")
	public String loginProc(Login login, Model model, HttpServletRequest request) {
		if (iServ.loginProc(login)) {
			HttpSession session = request.getSession();
			session.setAttribute("loginId", login.getId());
			return "redirect:/mainpage";
		}
		model.addAttribute("msg", "로그인에 실패하였습니다.");
		return "forward:/login";
	}

}
