package com.ssafy.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.spring.service.EatService;
import com.ssafy.spring.service.JjimService;
import com.ssafy.spring.vo.Eat;
import com.ssafy.spring.vo.Jjim;


@RequestMapping("/jjim")
@Controller
public class JjimController {

	JjimService jjimService;
	@Autowired
	public void setJjimService(JjimService jjimService) {
		this.jjimService = jjimService;
	}
	
	@GetMapping("/insertJjim.do")
	public String insertJjim(String user_id, int food_code, String food_name) {
		System.out.println("insertJJIm...");
		Jjim temp = new Jjim (user_id, food_code, food_name);
		jjimService.insertJjim(temp);
		return "redirect:/food/SearchPage.do"; // 이부분이 문제
	}
	
	@GetMapping("/deleteJjim.do")
	public String deleteJjim(int jjim_code) {
		System.out.println("찜코드!!!! -> " + jjim_code);
		jjimService.deleteJjim(jjim_code);
		return "redirect:/user/userinfo_jjim.do";
	}
	

	



}
