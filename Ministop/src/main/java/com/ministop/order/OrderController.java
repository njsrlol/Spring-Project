package com.ministop.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ministop.products.Products;

@RequestMapping("order")
@Controller
public class OrderController {
@Autowired
private IOrderService orderServ;

@RequestMapping("startorder")
public String startorder() {
	
	return "forward:/order";
}


@RequestMapping("tocart")
public String tocart(HttpServletRequest request,Model model) {
	HttpSession session = request.getSession();
	ArrayList<String> cartlist = (ArrayList<String>)session.getAttribute("cartLst");

	if(cartlist==null) 
		model.addAttribute("emptyInfo", "장바구니가 비어있습니다.");
	
	if(cartlist!=null) {
		List<Products> productLst = orderServ.getCart(cartlist);
		model.addAttribute("productLst", productLst);
	}

	return "forward:/cart";
}

@RequestMapping("removecart")
public String removecart(HttpServletRequest request) {
	HttpSession session = request.getSession();
	session.removeAttribute("cartLst");
	
	return "redirect:/order/tocart";
}

}
