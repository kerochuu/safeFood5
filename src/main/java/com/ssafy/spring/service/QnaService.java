package com.ssafy.spring.service;

import java.util.List;

import com.ssafy.spring.vo.Qna;

public interface QnaService {
	boolean writeQna(Qna qna);
	
	List<Qna> selsectQnaList();
	
	Qna selectQna(int qna_code);
	
	
	
}
