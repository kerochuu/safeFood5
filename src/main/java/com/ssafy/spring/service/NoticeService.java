package com.ssafy.spring.service;

import java.util.List;

import com.ssafy.spring.vo.Notice;

public interface NoticeService {

	void insertNotice(Notice notice);
	
	void updateNotice(Notice notice);
	
	void deleteNotice(Notice notice);
	
	Notice selectNotice(int notice_code);
	
	List<Notice> selectNoticeList();
	
}
