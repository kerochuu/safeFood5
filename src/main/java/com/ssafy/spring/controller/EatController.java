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
import com.ssafy.spring.vo.Eat;
import com.ssafy.spring.vo.Jjim;

@RequestMapping("/eat")
@Controller
public class EatController {

	EatService eatService;
	@Autowired
	public void setEatService(EatService eatService) {
		this.eatService = eatService;
	}
	
	@GetMapping("/insertEat.do")
	public String insertEat(String user_id, int food_code, String food_name) {
		System.out.print("섭취목록추가 컨트롤러");
		Eat temp = new Eat(user_id, food_code, food_name);
		System.out.println(user_id + "," + food_code + "," + food_name);
		eatService.insertEat(temp);
		return "redirect:/SearchPage.jsp";
	}
	
	@GetMapping("/deleteEat.do")
	public String deleteEat(int eat_code) {
		eatService.deleteEat(eat_code);
		return "redirect:/SearchPage.jsp";
	}

}
