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
		sqlSession.insert("noticeSQL.write", noticeDTO);
	}
	
	@Override
	public List<NoticeDTO> getNoticeList() {
		return sqlSession.selectList("noticeSQL.getNoticeList");
	}

//	@Override
//	public NoticeDTO getNotice(String id) {
//		return sqlSession.selectOne("noticeSQL.getNotice", id);
//	}

	@Override
	public void update(NoticeDTO noticeDTO) {
		sqlSession.update("noticeSQL.update", noticeDTO);
	}

	@Override
	public void delete(String id) {
		sqlSession.delete("noticeSQL.delete", id);
	}
	
	
}
