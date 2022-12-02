package com.board.dao;

import java.util.List;
import java.util.Map;

import com.board.bean.FaqDTO;

public interface FaqDAO {

	void faqWrite(Map<String, Object> map);

	List<FaqDTO> getFaqList();

	FaqDTO getFaqseq(int faqSeq);

	void faqUpdate(Map<String, Object> map);

	void faqDelete(int faqSeq);
	

}