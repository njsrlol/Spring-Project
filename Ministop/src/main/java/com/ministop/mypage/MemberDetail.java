package com.ministop.mypage;

import com.ministop.membership.Member;

import oracle.security.crypto.core.Padding.ID;

public class MemberDetail extends Member {
	// 나의매장번호 
    private Integer mystore;

    // 나의매장이름 
    private String storename;

    // 포인트 
    private Integer point;

    // 상품권 
    private Integer giftcerti;

    public Integer getMystore() {
        return mystore;
    }

    public void setMystore(Integer mystore) {
        this.mystore = mystore;
    }

    public String getStorename() {
        return storename;
    }

    public void setStorename(String storename) {
        this.storename = storename;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public Integer getGiftcerti() {
        return giftcerti;
    }

    public void setGiftcerti(Integer giftcerti) {
        this.giftcerti = giftcerti;
    }

    // Memberdetail 모델 복사
    public void CopyData(MemberDetail param)
    {
        this.mystore = param.getMystore();
        this.storename = param.getStorename();
        this.point = param.getPoint();
        this.giftcerti = param.getGiftcerti();
    }
}
