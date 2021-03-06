package com.ministop.mypage;

import com.ministop.products.Products;

public class Refrigerator extends Products {

    // 아이디 
    private String id;

    // 냉장고등록일 
    private String refridate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
        this.refridate = param.getRefridate();
    }
}