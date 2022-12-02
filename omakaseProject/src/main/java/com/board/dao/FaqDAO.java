package com.board.dao;

public interface FaqDAO {

	void faqWrite(Map<String, Object> map);

	List<FaqDTO> getFaqList();

	FaqDTO getFaqseq(int faqSeq);

	void faqUpdate(Map<String, Object> map);

	void faqDelete(int faqSeq);
	

}

}

