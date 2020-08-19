package com.ministop.mypage;

import java.util.ArrayList;
import java.util.List;

import com.ministop.products.Products;

public interface IMypageDAO {
	public String[] getRefri(String id);
	public List<Products> getProdinRefri(String [] productNum);
	public List<Products> getCart(ArrayList<String> cartlist);
}
