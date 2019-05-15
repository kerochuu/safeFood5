package com.ssafy.spring.service;

import java.util.List;

import com.ssafy.spring.vo.Eat;
import com.ssafy.spring.vo.Jjim;

public interface JjimService {
	void insertJjim(Jjim jjim);
	
	void deleteJjim(int jjim_code);
	
}