package com.ssafy.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.Qna;

public class QnaDAOImpl implements QnaDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public boolean writeQna(Qna qna) {
		session.insert("qna.insert", qna);
		return true;
	}

	@Override
	public List<Qna> selsectQnaList() {
		return session.selectList("qna.selectQnaList");
	}

	@Override
	public Qna selectQna(int qna_code) {
		return session.selectOne("qna.selectQna", qna_code);
	}

}
