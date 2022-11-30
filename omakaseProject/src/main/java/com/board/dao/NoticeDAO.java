package com.board.dao;

import java.util.List;

import com.board.bean.NoticeDTO;

public interface NoticeDAO {
	
	public void noticeWrite(NoticeDTO noticeDTO);

	public List<NoticeDTO> getNoticeList();

	public void update(NoticeDTO noticeDTO);

	public void delete(String id);

	public NoticeDTO getNoticeView(int notSeq);

	

}
