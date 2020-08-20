package com.ministop.order;

import java.util.ArrayList;
import java.util.List;

import com.ministop.products.Products;

public interface IOrderService {
	public List<Products> getCart(ArrayList<String> cartlist);
}
