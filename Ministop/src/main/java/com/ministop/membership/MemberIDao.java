package com.ministop.membership;

import java.util.List;
import java.util.Map;

public interface MemberIDao {
	public int isExistID(String id);
	public void insertMember(Member memberq);
	public String findInfoProc(Map<String, String> map);
	public int loginProc(Login login);
}
