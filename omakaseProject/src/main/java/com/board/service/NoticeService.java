package com.board.service;

import java.util.List;
import java.util.Map;

import com.board.bean.NoticeDTO;

public interface NoticeService {

	public void noticeWrite(NoticeDTO noticeDTO);
	
	public List<NoticeDTO> getNoticeList();

	public NoticeDTO getNoticeView(int notSeq);
	
	public void getNoticeUpdate(NoticeDTO noticeDTO);

	public void noticeDelete(int notSeq);
	
	public List<NoticeDTO> getIndexNotice(); 
}
