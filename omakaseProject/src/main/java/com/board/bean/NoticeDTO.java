package com.board.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeDTO {
	private int notSeq;
	private String notSubject;
	private String notContent;
	private int notHit;
	private String notLogtime;
}
