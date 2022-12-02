package com.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.board.bean.FaqDTO;

@Repository
@Transactional
public class FaqDAOMyBatis implements FaqDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void faqWrite(Map<String, Object> map) {
		sqlSession.insert("faqSQL.faqWrite", map);	
	}
	@Override
	public List<FaqDTO> getFaqList() {
		return sqlSession.selectList("faqSQL.getFaqList");	
		
	}
	@Override
	public FaqDTO getFaqseq(int faqSeq) {
		return sqlSession.selectOne("faqSQL.getFaqseq" ,faqSeq);
	}
	@Override
	public void faqUpdate(Map<String, Object> map) {
		sqlSession.update("faqSQL.faqUpdate" ,map);
		
	}
	@Override
	public void faqDelete(int faqSeq) {
		sqlSession.delete("faqSQL.faqDelete" ,faqSeq);
		
	}
	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return 0;
	}


}