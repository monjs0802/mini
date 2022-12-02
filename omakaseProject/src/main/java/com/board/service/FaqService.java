package com.board.service;

import java.util.List;
import java.util.Map;

import com.board.bean.FaqDTO;

public interface FaqService {
	
	//faq글쓰기
	public void faqWrite(Map<String, Object> map);

	//faq리스트
	public List<FaqDTO> getFaqList();

	//faq번호 들고가서 faqdto 가져오기
	public FaqDTO getFaqseq(int faqSeq);

	public void faqUpdate(Map<String, Object> map);
	
	public void faqDelete(int faqSeq);
	
	//게시판 총 갯수
	public int getTotal();


}