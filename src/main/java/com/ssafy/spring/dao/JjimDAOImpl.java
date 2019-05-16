package com.ssafy.spring.dao;

import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.Jjim;

public class JjimDAOImpl implements JjimDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public void insertJjim(Jjim jjim) {
		session.insert("jjim.insertJjim", jjim);
	}

	@Override
	public void deleteJjim(int jjim_code) {
		session.delete("jjim.deleteJjim", jjim_code);
	}

	@Override
	public Jjim selectJjim(int jjim_code) {
		return session.selectOne("jjim.selectJjim", jjim_code);
	}

}
