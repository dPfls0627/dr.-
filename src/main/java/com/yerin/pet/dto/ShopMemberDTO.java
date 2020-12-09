package com.yerin.pet.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ShopMemberDTO {
	
	private int shopid;
	private String sid;
	private String spassword;
	private String sname;
	private String slicense;
	private String saddress;
	private String sbirth;
	private String semail;
	private int spoint;
	private String surl;
	private String sprofile;
	private MultipartFile sfile;
	private int type;
	
}
