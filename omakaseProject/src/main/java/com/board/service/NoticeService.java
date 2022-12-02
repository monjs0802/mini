package com.board.service;

import java.util.List;

import com.board.bean.NoticeDTO;

public interface NoticeService {

	public void noticeWrite(NoticeDTO noticeDTO);
	
	public List<NoticeDTO> getNoticeList();

	public NoticeDTO getNoticeView(int notSeq);
	
	public void getNoticeUpdate(int notSeq);

	public void noticeDelete(int notSeq);
}
