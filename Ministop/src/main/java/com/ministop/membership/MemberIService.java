package com.ministop.membership;

import java.util.Map;


public interface MemberIService {
	public String isExistID(Member memberq, Map<String, Object> sInfo);
	public void reqAuthNum(Map<String, Object> sInfo);
	public String authNumConfirm(Map<String, Object> sInfo, String reqAuthNum);
	public boolean memberProc(Member memberq, Map<String, Object> sInfo);
	public String findInfoProc(String email, String id);
	public boolean loginProc(Login login);
}