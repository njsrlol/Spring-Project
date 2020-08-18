package com.ministop.store;

//상가업소정보 
public class Store {

 // 상가업소번호 
 private Integer storenum;

 // 상호명 
 private String storename;

 // 지점명 
 private String branchname;

 // 시도코드 
 private Integer sidocode;

 // 시도명 
 private String sidoname;

 // 시군구코드 
 private Integer sigungucode;

 // 시군구명 
 private String sigunguname;

 // 행정동코드 
 private String publiccode;

 // 행정동명 
 private String publicdong;

 // 도로명 
 private String streetname;

 // 건물명 
 private String buildingname;

 // 도로명주소 
 private String newaddress;

 // 구우편번호 
 private Integer oldpostalcode;

 // 신우편번호 
 private Integer newpostalcode;

 // 경도 
 private float longitude;

 // 위도 
 private float latitude;

 public Integer getStorenum() {
     return storenum;
 }

 public void setStorenum(Integer storenum) {
     this.storenum = storenum;
 }

 public String getStorename() {
     return storename;
 }

 public void setStorename(String storename) {
     this.storename = storename;
 }

 public String getBranchname() {
     return branchname;
 }

 public void setBranchname(String branchname) {
     this.branchname = branchname;
 }

 public Integer getSidocode() {
     return sidocode;
 }

 public void setSidocode(Integer sidocode) {
     this.sidocode = sidocode;
 }

 public String getSidoname() {
     return sidoname;
 }

 public void setSidoname(String sidoname) {
     this.sidoname = sidoname;
 }

 public Integer getSigungucode() {
     return sigungucode;
 }

 public void setSigungucode(Integer sigungucode) {
     this.sigungucode = sigungucode;
 }

 public String getSigunguname() {
     return sigunguname;
 }

 public void setSigunguname(String sigunguname) {
     this.sigunguname = sigunguname;
 }

 public String getPubliccode() {
     return publiccode;
 }

 public void setPubliccode(String publiccode) {
     this.publiccode = publiccode;
 }

 public String getPublicdong() {
     return publicdong;
 }

 public void setPublicdong(String publicdong) {
     this.publicdong = publicdong;
 }

 public String getStreetname() {
     return streetname;
 }

 public void setStreetname(String streetname) {
     this.streetname = streetname;
 }

 public String getBuildingname() {
     return buildingname;
 }

 public void setBuildingname(String buildingname) {
     this.buildingname = buildingname;
 }

 public String getNewaddress() {
     return newaddress;
 }

 public void setNewaddress(String newaddress) {
     this.newaddress = newaddress;
 }

 public Integer getOldpostalcode() {
     return oldpostalcode;
 }

 public void setOldpostalcode(Integer oldpostalcode) {
     this.oldpostalcode = oldpostalcode;
 }

 public Integer getNewpostalcode() {
     return newpostalcode;
 }

 public void setNewpostalcode(Integer newpostalcode) {
     this.newpostalcode = newpostalcode;
 }

 public float getLongitude() {
     return longitude;
 }

 public void setLongitude(float longitude) {
     this.longitude = longitude;
 }

 public float getLatitude() {
     return latitude;
 }

 public void setLatitude(float latitude) {
     this.latitude = latitude;
 }

 // Store 모델 복사
 public void CopyData(Store param)
 {
     this.storenum = param.getStorenum();
     this.storename = param.getStorename();
     this.branchname = param.getBranchname();
     this.sidocode = param.getSidocode();
     this.sidoname = param.getSidoname();
     this.sigungucode = param.getSigungucode();
     this.sigunguname = param.getSigunguname();
     this.publiccode = param.getPubliccode();
     this.publicdong = param.getPublicdong();
     this.streetname = param.getStreetname();
     this.buildingname = param.getBuildingname();
     this.newaddress = param.getNewaddress();
     this.oldpostalcode = param.getOldpostalcode();
     this.newpostalcode = param.getNewpostalcode();
     this.longitude = param.getLongitude();
     this.latitude = param.getLatitude();
 }
}