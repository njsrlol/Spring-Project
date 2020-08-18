package com.ministop.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements IOrderService {
@Autowired
private IOrderDAO orderDAO;
}
