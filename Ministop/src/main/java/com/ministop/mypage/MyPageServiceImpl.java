package com.ministop.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements IMyPageService{
@Autowired 
private IMypageDAO mypageDAO;
}
