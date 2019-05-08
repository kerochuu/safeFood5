package com.ssafy.spring.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.spring.service.QnaService;
import com.ssafy.spring.vo.Qna;


// REST(Representational Status Transfer)
// http 요청방식 -> get 조회, post 등록, put 수정, delete 삭제
@CrossOrigin(origins = {"*"})
@RequestMapping("/question")
@RestController
public class QnaController {
	
	private QnaService qnaService;
	@Autowired
	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}
	
	@GetMapping("/qnas")
	public ResponseEntity<List<Qna>> getQnaList() {
		List<Qna> list = qnaService.selsectQnaList(); //접두사로 redirect붙이지 않으면 default로 forwarding
		if(list.size() == 0) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Qna>>(list,HttpStatus.OK);
	
	}
	
	
	

	//@RequestMapping(value="/get.do",method=RequestMethod.GET)
	@GetMapping("/qna/{qna_code}")
	public ResponseEntity<Qna> getQna(@PathVariable int qna_code) {
		Qna qna = qnaService.selectQna(qna_code);
		if(qna == null) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		} 
		return new ResponseEntity<Qna>(qna,HttpStatus.OK);
	}
	
	/*@RequestMapping(value="/director/register.do",method=RequestMethod.POST)
	public String registerDirector(String id, String name, int age, int winnerCount) {
		directorService.addDirector(new Director(id, name, age, winnerCount));
		return "redirect:/director/list.do";
	}*/
	
	//@RequestMapping(value="/register.do",method=RequestMethod.POST)
	@PostMapping("/qna")
	public ResponseEntity<Boolean> registerQna(@RequestBody Qna qna) {
		boolean flag = qnaService.writeQna(qna);;
		return flag ? new ResponseEntity<Boolean>(true, HttpStatus.OK) :
					new ResponseEntity<Boolean>(false, HttpStatus.CONFLICT);
		
	}


	
	
	
	
	
}
















