package com.ministop.membership;

//회원 
public class Member extends Login{
	
	// 이메일
	private String email;

	// 닉네임
	private String name;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
