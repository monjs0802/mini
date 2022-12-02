package com.board.dao;

import java.util.List;

import com.board.bean.NoticeDTO;

public interface NoticeDAO {
	
	public void noticeWrite(NoticeDTO noticeDTO);

	public List<NoticeDTO> getNoticeList();

	public NoticeDTO getNoticeView(int notSeq);
	
	public void getNoticeUpdate(int notSeq);

	public void noticeDelete(int notSeq);
	
}
