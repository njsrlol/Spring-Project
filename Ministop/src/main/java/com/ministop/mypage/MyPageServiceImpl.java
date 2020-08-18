package com.ministop.mypage;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ministop.products.Products;

@Service
public class MyPageServiceImpl implements IMyPageService{
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageServiceImpl.class);

@Autowired 
private IMypageDAO mypageDAO;

@Override
public List<Products> getRefri(String id) {
	String[] productNum = mypageDAO.getRefri(id);
	
	for(int i=0; i<productNum.length; i++)
	logger.warn(productNum[i].toString());
	
	List<Products> products = mypageDAO.getProdinRefri(productNum);
	
	return products;
}

}
