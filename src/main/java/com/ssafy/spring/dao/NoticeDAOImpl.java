package com.ssafy.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.Notice;

public class NoticeDAOImpl implements NoticeDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public void insertNotice(Notice notice) {
		session.insert("notice.insert", notice);
	}

	@Override
	public void updateNotice(Notice notice) {
		session.update("notice.update", notice);
	}

	@Override
	public void deleteNotice(Notice notice) {
		session.delete("notice.delete", notice);
	}

	@Override
	public Notice selectNotice(int notice_code) {
		return session.selectOne("notice.selectId", notice_code);
	}

	@Override
	public List<Notice> selectNoticeList() {
		return session.selectList("notice.selectList");
	}

}
