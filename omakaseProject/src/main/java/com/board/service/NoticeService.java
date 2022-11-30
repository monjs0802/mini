package com.board.service;

import java.util.List;

import com.board.bean.NoticeDTO;

public interface NoticeService {

	public void noticeWrite(NoticeDTO noticeDTO);
	
	public List<NoticeDTO> getNoticeList();

	/* public NoticeDTO getNotice(String id); */

	public void update(NoticeDTO noticeDTO);

	public void delete(String id);
	
}
