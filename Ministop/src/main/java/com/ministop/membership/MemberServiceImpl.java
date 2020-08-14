package com.ministop.membership;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jin.mail.SHA;

@Service
public class MemberServiceImpl implements MemberIService {
	private static final Logger Logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	private MemberIDao iDao;
	final String NOEXISTID = "사용 가능한 아이디 입니다.";
	final String EXISTID = "중복된 아이디 입니다.";

	final String AUTHCONFIRMOK = "인증 성공하였습니다.";
	final String REAUTHCONFIRMOK = "이미 " + AUTHCONFIRMOK;
	final String AUTHCONFIRMFAILED = "인증 실패하였습니다.";
	final String NOAUTHNUMBER = "인증번호가 존재하지 않습니다.";

	@Override // 프로젝트 특이점 : DB의 퍼포먼스를 올리기 위해서 해당 코드를 진행했다. (과부화 방지)
	public String isExistID(Member memberq, Map<String, Object> sInfo) {
		String id = (String) sInfo.get("checkedID");
		if (id != null && id.contentEquals(memberq.getId())) {
			Logger.warn("session");
			return NOEXISTID;
		}
		if (iDao.isExistID(memberq.getId()) == 0) {
			sInfo.put("checkedID", memberq.getId());
			Logger.warn("db");
			return NOEXISTID;
		}
		return EXISTID;
	}

	@Override
	public void reqAuthNum(Map<String, Object> sInfo) {
		String authNum = String.format("%04d", (int) (Math.random() * 10000));
		sInfo.put("authNum", authNum);
		/* return authNum; */
	}

	@Override
	public String authNumConfirm(Map<String, Object> sInfo, String reqAuthNum) {
		String authNum = (String) sInfo.get("authNum");
		Boolean authOK = (Boolean) sInfo.get("authOK");

		if (authOK != null && authOK == true)
			return REAUTHCONFIRMOK;
		if (authNum == null)
			return NOAUTHNUMBER;
		if (reqAuthNum.contentEquals(authNum)) {
			sInfo.remove("authNum");
			sInfo.put("authOK", true);
			return AUTHCONFIRMOK;
		}
		return AUTHCONFIRMFAILED;
	}

	@Override
	public boolean memberProc(Member memberq, Map<String, Object> sInfo) {
		String sId = (String) sInfo.get("checkedID");
		Boolean authOK = (Boolean) sInfo.get("authOK");
		Logger.warn("sId : " + sId);
		if (sId.contentEquals(memberq.getId()) && authOK) {
			iDao.insertMember(memberq);
			sInfo.remove("authOK");
			return true;
		}
		return false;
	}

	@Override
	public String findInfoProc(String email, String id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("email", email);
		
		String retId = iDao.findInfoProc(map);
		String pass = "P@ssW0rd";
		SHA sha = new SHA();
		sha.encryptSHA512(pass);
		/*
			ID가 존재하는 경우 이메일로 패스워드 전송
			별도로 member table에 패스워드 업데이트	
		*/
		if(retId==null) return "ID가 존재하지 않습니다.";
		return iDao.findInfoProc(map);
	}

	@Override
	public boolean loginProc(Login login) {
		if(iDao.loginProc(login)==1) return true;
		return false;
	}

}
