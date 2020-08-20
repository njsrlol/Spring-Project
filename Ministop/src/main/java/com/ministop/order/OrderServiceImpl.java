package com.ministop.order;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ministop.products.Products;

@Service
public class OrderServiceImpl implements IOrderService {
@Autowired
private IOrderDAO orderDAO;

@Override
public List<Products> getCart(ArrayList<String> cartlist) {
	List<Products> products = orderDAO.getCart(cartlist);
	
	return products;
}
}
