package com.board.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeDTO {
	private int notSeq;
	private String notSubject;
	private String notContent;
	private int notHit;
	private Date notLogtime;
}
