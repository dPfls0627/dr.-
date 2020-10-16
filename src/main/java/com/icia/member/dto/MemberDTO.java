package com.icia.member.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	
	private String mid;
	private String mpassword;
	private String mname;
	private String mphone;
	private String memail;
	private String mbirth;
	private String postcode;
	private String address;
	private String detailaddress;
	private String extraaddress;
	private MultipartFile profile;
	private String profilename;	
	private String kakaoId;
	private String naverId;
	
}
