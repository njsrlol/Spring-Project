package com.ministop.mypage;

public class Refrigerator {

    // 아이디 
    private String id;

    // 상품번호 
    private String productnum;

    // 냉장고등록일 
    private String refridate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProductnum() {
        return productnum;
    }

    public void setProductnum(String productnum) {
        this.productnum = productnum;
    }

    public String getRefridate() {
        return refridate;
    }

    public void setRefridate(String refridate) {
        this.refridate = refridate;
    }

    // Refrigerator 모델 복사
    public void CopyData(Refrigerator param)
    {
        this.id = param.getId();
        this.productnum = param.getProductnum();
        this.refridate = param.getRefridate();
    }
}