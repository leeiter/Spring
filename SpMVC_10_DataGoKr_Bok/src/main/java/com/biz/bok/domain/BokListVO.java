package com.biz.bok.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class BokListVO {
	
	private String inqNum; //	서비스ID
	private String jurMnofNm; //	서비스명
	private String jurOrgNm; //	소관부처명
	private String servDgst; //	소관조직명
	private String servDtlLink; //	조회수
	private String servId; //	서비스 요약
	private String servNm; //	서비스상세링크
	private String svcfrstRegTs; //	서비스등록일
	
}
