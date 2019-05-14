package com.ssafy.spring.dao;

import java.util.List;

import com.ssafy.spring.vo.Notice;

public interface NoticeDAO {

	void insertNotice(Notice notice);
	
	void updateNotice(Notice notice);
	
	void deleteNotice(Notice notice);
	
	Notice selectNotice(int notice_code);
	
	List<Notice> selectNoticeList();
	

}
