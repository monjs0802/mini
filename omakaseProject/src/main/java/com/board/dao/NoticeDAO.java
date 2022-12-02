package com.board.dao;

import java.util.List;
import java.util.Map;

import com.board.bean.NoticeDTO;

public interface NoticeDAO {
	
	public void noticeWrite(NoticeDTO noticeDTO);

	public List<NoticeDTO> getNoticeList();

	public NoticeDTO getNoticeView(int notSeq);
	
	public void getNoticeUpdate(NoticeDTO noticeDTO);

	public void noticeDelete(int notSeq);
	
}
