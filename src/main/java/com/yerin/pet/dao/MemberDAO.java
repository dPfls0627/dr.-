package com.yerin.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int memberJoin(MemberDTO member) {
		if(member.getKakaoId()!= null) {
		return sql.insert("Member.kakaoMemberJoin", member);
		}else if(member.getNaverId() != null) {
		return sql.insert("Member.naverMemberJoin", member);
		}else {
		return sql.insert("Member.memberJoin", member);
		}
	}

	public String memberLogin(MemberDTO member) {
		return sql.selectOne("Member.memberLogin",member);
	}

	public List<MemberDTO> memberList() {	
		return sql.selectList("Member.memberList");
	}

	public MemberDTO memberView(String mid) {
		return sql.selectOne("Member.memberView",mid);
	}

	public void memberDelete(String mid) {
			sql.update("Member.memberDelete",mid);
		
	}

	public void memberUpdate(MemberDTO member) {
			sql.update("Member.memberUpdate",member);
		
	}

	public String idOverlap(String mid) {
		return sql.selectOne("Member.idOverlap",mid);
	}

	public String kakaoLogin(String kakaoId) {
		return sql.selectOne("Member.kakaoLogin",kakaoId);
	}
	public String naverLogin(String naverId) {
		return sql.selectOne("Member.naverLogin", naverId);
	}
	


}
