package com.ssafy.spring.service;

import java.util.List;

import com.ssafy.spring.dao.QnaDAO;
import com.ssafy.spring.vo.Qna;

public class QnaServiceImpl implements QnaService {

	
	private QnaDAO qnaDao;
	
	
	public void setQnaDao(QnaDAO qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public boolean writeQna(Qna qna) {
		qnaDao.writeQna(qna);
		return true;
	}

	@Override
	public List<Qna> selsectQnaList() {
		return qnaDao.selsectQnaList();
	}

	@Override
	public Qna selectQna(int qna_code) {
		return qnaDao.selectQna(qna_code);
	}

}
