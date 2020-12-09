package com.yerin.pet.dto;

import lombok.*;

@Getter
@Setter
@ToString
public class DTBoardDTO {
	private int dtbnumber;
	private String dtbwriter;
	private String dtbtitle;
	private String dtbcontents;
	private String dtbdate;
	private int dtbhits;

}
