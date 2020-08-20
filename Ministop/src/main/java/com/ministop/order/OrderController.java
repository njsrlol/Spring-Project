package com.ministop.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ministop.products.Products;

@RequestMapping("order")
@Controller
public class OrderController {
@Autowired
private IOrderService orderServ;

@RequestMapping("startorder")
public String startorder(OrderTable order, Model model) {
	model.addAttribute("order", order);


	return "forward:/order";
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

	if(cartlist==null) 
		model.addAttribute("emptyInfo", "장바구니가 비어있습니다.");
	
	if(cartlist!=null) {
		List<Products> productLst = orderServ.getCart(cartlist);
		session.setAttribute("productLst", productLst);
		
	}

	return "forward:/cart";
}

@RequestMapping("removecart")
public String removecart(HttpServletRequest request) {
	HttpSession session = request.getSession();
	session.removeAttribute("cartLst");
	session.removeAttribute("productLst");
	
	return "redirect:/order/tocart";
}

@RequestMapping("carttoback")
public String carttoback(HttpServletRequest request) {
	HttpSession session = request.getSession();
	session.removeAttribute("productLst");
	
	return "redirect:/mypage";
}

//이제 값 받아서 service 로 넘기기
@RequestMapping("makeorder")
public String makeorder(Products product) {
	
	
	return "redirect:/mypage";
}

}
