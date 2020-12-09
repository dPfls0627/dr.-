package com.yerin.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.MemberDTO;
import com.yerin.pet.dto.ProductDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.dto.ShopMemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	

	public int shopMemberJoin(ShopMemberDTO shopMember) {
		return sql.insert("Member.shopMemberJoin", shopMember);        
	}

	public int memberJoin(MemberDTO member) {
		if(member.getKakaoId() != null) {
			return sql.insert("Member.kakaoMemberJoin", member);
		}else if(member.getNaverId() != null){
			return sql.insert("Member.naverMemberJoin", member);
		}else {			
			return sql.insert("Member.memberJoin", member);        
		}
	}

public String idOverlap1(String mid) {
		return sql.selectOne("Member.idOverlap1",mid);
	}

	public String idOverlap2(String sid) {
		return sql.selectOne("Member.idOverlap2",sid);
	}

	public String memberLogin(MemberDTO member) {
		return sql.selectOne("Member.memberLogin",member);
	}

	public String memberShopLogin(ShopMemberDTO shopMember) {
		return sql.selectOne("Member.memberShopLogin",shopMember);
	}

	public int memberLoginType(ShopMemberDTO shopMember) {
		return sql.selectOne("Member.memberLoginType",shopMember);
	}

	public int memberJoinType(MemberDTO member) {
		return sql.selectOne("Member.memberJoinType",member);
	}

	public List<ShopMemberDTO> loginList() {
		return sql.selectList("Member.loginList");
	}

	public int memberLoginOk(String sid) {
		return sql.update("Member.memberLoginOk",sid);
	}

	public List<MemberDTO> memberList() {
		return sql.selectList("Member.memberList");
	}

	public MemberDTO memberUpdate(String mid) {
		return sql.selectOne("Member.memberUpdate",mid);
	}
	public ProductDTO productUpdate(String pid) {
		return sql.selectOne("Member.productUpdate",pid);
	}
	public ShopMemberDTO shopUpdate(String sid) {
		return sql.selectOne("Member.shopUpdate",sid);
	}
	public int memberDelete(String mid) {
		return sql.delete("Member.memberDelete",mid);
	}

	public int memberUpdateProcess(MemberDTO member) {
		return sql.update("Member.memberUpdateProcess",member);
	}

	public int shopMemberDelete(String sid) {
		return sql.delete("Member.shopMemberDelete",sid);
	}

	public List<ReserveDTO> reserveList() {
		return sql.selectList("Member.reserveList");
	}

	public String kakaoLogin(String kakaoId) {
		return sql.selectOne("Member.kakaoLogin",kakaoId);
	}
	public String naverLogin(String naverId) {
		return sql.selectOne("Member.naverLogin", naverId);
	}
	


}
