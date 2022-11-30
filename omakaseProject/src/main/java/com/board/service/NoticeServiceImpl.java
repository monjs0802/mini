package com.board.service;

import java.util.List;

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
		return noticeDAO.getNoticeList();
	}

//	@Override
//	public NoticeDTO getNotice(String id) {
//		//DB
//		return noticeDAO.getNotice(id);
//	}

	@Override
	public void update(NoticeDTO noticeDTO) {
		//DB
		noticeDAO.update(noticeDTO);
	}

	@Override
	public void delete(String id) {
		//DB
		noticeDAO.delete(id);
	}
	
}
