package com.board.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeDTO {
	private int noticeSeq;
	private String noticeSubject;
	private String noticeContent;
	private int noticeHit;
	private Date noticeLogTime;
}
