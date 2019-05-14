package com.ssafy.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.dao.NoticeDAO;
import com.ssafy.spring.vo.Notice;

public class NoticeServiceImpl implements NoticeService {

	
private NoticeDAO noticeDao;
	
	@Autowired
	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	
	@Override
	public void insertNotice(Notice notice) {
		noticeDao.insertNotice(notice);
	}

	@Override
	public void updateNotice(Notice notice) {
		noticeDao.updateNotice(notice);
	}

	@Override
	public void deleteNotice(Notice notice) {
		noticeDao.deleteNotice(notice);
	}

	@Override
	public Notice selectNotice(int notice_code) {
		return noticeDao.selectNotice(notice_code);
	}

	@Override
	public List<Notice> selectNoticeList() {
		return noticeDao.selectNoticeList();
	}

}
