package com.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.board.bean.FaqDTO;
import com.board.dao.FaqDAO;

@Service
@Transactional
public class FaqServiceImpl implements FaqService {
	@Autowired
	private FaqDAO faqDAO;
	
	@Override
	public void faqWrite(Map<String, Object> map) {
		faqDAO.faqWrite(map);
		
	}

	@Override
	public List<FaqDTO> getFaqList() {
		List<FaqDTO> list = faqDAO.getFaqList();
		return list;
	}

	@Override
	public FaqDTO getFaqseq(int faqSeq) {
		return faqDAO.getFaqseq(faqSeq);
	}

	@Override
	public void faqUpdate(Map<String, Object> map) {
		faqDAO.faqUpdate(map);
		
	}

	@Override
	public void faqDelete(int faqSeq) {
		faqDAO.faqDelete(faqSeq);
		
	}

	/* 게시물 총 갯수 */
	@Override
	public int getTotal() {
		return faqDAO.getTotal();
	}



}