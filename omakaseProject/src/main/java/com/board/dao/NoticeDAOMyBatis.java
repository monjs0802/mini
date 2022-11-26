package com.board.dao;

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

}
