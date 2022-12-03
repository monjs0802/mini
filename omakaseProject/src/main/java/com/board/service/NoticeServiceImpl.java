package com.board.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<NoticeDTO> getNoticeList() {
		//DB
		return noticeDAO.getNoticeList();
	}
	
	@Override
	public NoticeDTO getNoticeView(int notSeq) {
		//DB
		return noticeDAO.getNoticeView(notSeq);
	}
	
	@Override
	public void getNoticeUpdate(NoticeDTO noticeDTO) {
		//DB
		noticeDAO.getNoticeUpdate(noticeDTO);
	}

	@Override
	public void noticeDelete(int notSeq) {
		//DB
		noticeDAO.noticeDelete(notSeq);
	}
	
	@Override
	public List<NoticeDTO> getIndexNotice() {
		return noticeDAO.getIndexNotice();
	}
	
}
