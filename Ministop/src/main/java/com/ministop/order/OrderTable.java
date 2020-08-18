package com.ministop.order;

public class OrderTable {

    // 아이디 
    private String id;

    // 주문번호 
    private String ordernum;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum;
    }

    // Order 모델 복사
    public void CopyData(OrderTable param)
    {
        this.id = param.getId();
        this.ordernum = param.getOrdernum();
    }
}