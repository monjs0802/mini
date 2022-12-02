package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.board.bean.NoticeDTO;

@Repository
@Transactional
public class NoticeDAOMyBatis implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {
		sqlSession.insert("noticeSQL.noticeWrite", noticeDTO);
	}
	
	@Override
	public List<NoticeDTO> getNoticeList() {
		return sqlSession.selectList("noticeSQL.getNoticeList");
	}

	@Override
	public NoticeDTO getNoticeView(int notSeq) {
		return sqlSession.selectOne("noticeSQL.getNoticeView", notSeq);
	}
	
	@Override
	public void getNoticeUpdate(int notSeq) {
		sqlSession.update("noticeSQL.getNoticeUpdate", notSeq);
	}

	@Override
	public void noticeDelete(int notSeq) {
		sqlSession.delete("noticeSQL.noticeDelete", notSeq);
	}
	

}
