package com.ssafy.spring.dao;

import java.util.List;

import com.ssafy.spring.vo.Qna;

public interface QnaDAO {
	
	boolean writeQna(Qna qna);
	
	List<Qna> selsectQnaList();
	
	Qna selectQna(int qna_code);
	
	
	
}
