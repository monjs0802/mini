package com.board.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomerDTO {
	private String cusId;
	private String cusName;
	private String cusSubject;
	private String cusContent;
	private Date cusLogtime;
}
