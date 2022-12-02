package com.board.dao;

import java.util.List;
import java.util.Map;

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
		System.out.println(notSeq);
		return sqlSession.selectOne("noticeSQL.getNoticeView", notSeq);
	}
	
	@Override
	public void getNoticeUpdate(NoticeDTO noticeDTO) {
		System.out.println(noticeDTO.getNotSubject());
		System.out.println(noticeDTO.getNotContent());
		System.out.println(noticeDTO.getNotSeq());
		sqlSession.update("noticeSQL.getNoticeUpdate", noticeDTO);
	}

	@Override
	public void noticeDelete(int notSeq) {
		sqlSession.delete("noticeSQL.noticeDelete", notSeq);
	}
	

}
