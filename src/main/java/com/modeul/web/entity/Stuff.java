package com.modeul.web.entity;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Stuff {

	// LocalDateTime으로 타입 변경!
	private Long id;
	private String title;
	private String place;
	private LocalDateTime regDate;
	private String numPeople;
	private String url;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDateTime deadline;
	private String price;
	private String content;
	private Long memberId;
	private long categoryId;

}
