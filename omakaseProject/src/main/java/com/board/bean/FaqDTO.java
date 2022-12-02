package com.board.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FaqDTO {
	private int faqSeq;
	private String faqCategory;
	private String faqSubject;
	private String faqContent;
	private String faqLogtime;
}
