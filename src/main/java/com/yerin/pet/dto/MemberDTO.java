package com.yerin.pet.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {

	private int memberid;
	private String mid;
	private String mpassword;
	private String mname;
	private String maddress;
	private String mbirth;
	private String memail;
	private String mphone;
	private int mpoint;
	private String mnickname;
	private int type;
	private String naverId;
	private String kakaoId;
	private String googleId;
	private String facebookId;
}
