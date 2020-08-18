package com.ministop.mypage;

public class DiscountCoupon {
	
    // 아이디 
    private String id;

    // 쿠폰번호 
    private String couponnum;

    // 쿠폰할인율 
    private Integer cpdiscountper;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCouponnum() {
        return couponnum;
    }

    public void setCouponnum(String couponnum) {
        this.couponnum = couponnum;
    }

    public Integer getCpdiscountper() {
   
        return cpdiscountper;
    }

    public void setCpdiscountper(Integer cpdiscountper) {
        this.cpdiscountper = cpdiscountper;
    }

    // Discountcoupon 모델 복사
    public void CopyData(DiscountCoupon param)
    {
        this.id = param.getId();
        this.couponnum = param.getCouponnum();
        this.cpdiscountper = param.getCpdiscountper();
    }
}