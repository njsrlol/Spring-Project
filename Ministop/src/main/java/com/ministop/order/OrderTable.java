package com.ministop.order;

import com.ministop.membership.Member;

public class OrderTable extends Member{

    // 주문번호 
    private Integer ordernum;

    // 주문날짜 
    private String orderdate;

    // 상품품목 
    private String orderproducts;

    // 판매금액 
    private String ordersales;

    // 수령여부 
    private Integer receivecheck;

    // 수령날짜 
    private String receivedate;

    // 수령시간 
    private String receivetime;

    // 결제정보 
    private Integer paymentinfo;

    // 주문확정 
    private Integer ordercheck;


    public Integer getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(Integer ordernum) {
        this.ordernum = ordernum;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    public String getOrderproducts() {
        return orderproducts;
    }

    public void setOrderproducts(String orderproducts) {
        this.orderproducts = orderproducts;
    }

    public String getOrdersales() {
        return ordersales;
    }

    public void setOrdersales(String ordersales) {
        this.ordersales = ordersales;
    }

    public Integer getReceivecheck() {
        return receivecheck;
    }

    public void setReceivecheck(Integer receivecheck) {
        this.receivecheck = receivecheck;
    }

    public String getReceivedate() {
        return receivedate;
    }

    public void setReceivedate(String receivedate) {
        this.receivedate = receivedate;
    }

    public String getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(String receivetime) {
        this.receivetime = receivetime;
    }

    public Integer getPaymentinfo() {
        return paymentinfo;
    }

    public void setPaymentinfo(Integer paymentinfo) {
        this.paymentinfo = paymentinfo;
    }

    public Integer getOrdercheck() {
        return ordercheck;
    }

    public void setOrdercheck(Integer ordercheck) {
        this.ordercheck = ordercheck;
    }

    // Ordertable 모델 복사
    public void CopyData(OrderTable param)
    {
        this.ordernum = param.getOrdernum();
        this.orderdate = param.getOrderdate();
        this.orderproducts = param.getOrderproducts();
        this.ordersales = param.getOrdersales();
        this.receivecheck = param.getReceivecheck();
        this.receivedate = param.getReceivedate();
        this.receivetime = param.getReceivetime();
        this.paymentinfo = param.getPaymentinfo();
        this.ordercheck = param.getOrdercheck();
    }
}