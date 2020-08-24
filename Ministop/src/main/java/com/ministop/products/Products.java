package com.ministop.products;

//상품 
public class Products {

 // 상품번호 
 private String productnum;

 // 상품이름 
 private String productname;

 // 상품가격 
 private String productprice;

 // 상품상세정보 
 private byte[] productdetail;

 // 상품이미지 
 private String productimage;

 // 상품분류 
 private Integer productsort;

 // 상품등록일 
 private String productdate;

 public String getProductnum() {
     return productnum;
 }

 public void setProductnum(String productnum) {
     this.productnum = productnum;
 }

 public String getProductname() {
     return productname;
 }

 public void setProductname(String productname) {
     this.productname = productname;
 }

 public String getProductprice() {
     return productprice;
 }

 public void setProductprice(String productprice) {
     this.productprice = productprice;
 }

 public byte[] getProductdetail() {
     return productdetail;
 }

 public void setProductdetail(byte[] productdetail) {
     this.productdetail = productdetail;
 }

 public String getProductimage() {
     return productimage;
 }

 public void setProductimage(String productimage) {
     this.productimage = productimage;
 }

 public Integer getProductsort() {
     return productsort;
 }

 public void setProductsort(Integer productsort) {
     this.productsort = productsort;
 }

 public String getProductdate() {
     return productdate;
 }

 public void setProductdate(String productdate) {
     this.productdate = productdate;
 }

 // Products 모델 복사
 public void CopyData(Products param)
 {
     this.productnum = param.getProductnum();
     this.productname = param.getProductname();
     this.productprice = param.getProductprice();
     this.productdetail = param.getProductdetail();
     this.productimage = param.getProductimage();
     this.productsort = param.getProductsort();
     this.productdate = param.getProductdate();
 }
}