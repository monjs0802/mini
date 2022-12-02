package com.board.bean;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FaqDTO {
	private int faqSeq;
	private String faqQuestionType;
	private String faqSubject;
	private String faqContent;
	private String faqLogtime;
}
