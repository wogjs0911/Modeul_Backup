package com.modeul.web.entity;

import java.util.Date;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Stuff {
	
	private Long id;
	private String title;
	private String place;
	private Date regDate;
	private String numPeople;
	private String url;
	private Date deadline;
	private String price;
	private String content;

}
