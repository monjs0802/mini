package com.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.board.bean.NoticeDTO;
import com.board.dao.NoticeDAO;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {
		//DB
		noticeDAO.noticeWrite(noticeDTO);
	}

}
