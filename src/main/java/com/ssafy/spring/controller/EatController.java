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




@RequestMapping("/eat")
@Controller
public class EatController {

	EatService eatService;
	@Autowired
	public void seteatService(EatService eatService) {
		this.eatService = eatService;
	}
	
	@PostMapping("/insertEat.do")
	public String insertEat(Eat eat) {
		eatService.insertEat(eat);
		return "redirect:/Eat.jsp";
	}
	
	@PostMapping("/updateEat.do")
	public String updateEat(HttpSession session, Eat eat, Model model) {
		eatService.updateEat(eat);
//		model.addAttribute("Eat", EatService.selectEat((String) session.getAttribute("EatId")));
		return "Eat";
	}
	
	@GetMapping("/deleteEat.do")
	public String deleteEat(HttpSession session, Eat eat) {
		eatService.deleteEat((Eat) session.getAttribute("Eat_code"));
		return "redirect:/index.jsp";
	}
	

	@GetMapping("/eatList.do")
	public String selectEatList(Model model, int user_code) {
		model.addAttribute("EatList", eatService.selectEatListByUser(user_code));
		return "EatPage";
	}
	
	@GetMapping("/selectEat.do")
	public String serchById(int eat_code, Model model) {
		model.addAttribute("Eat", eatService.selectEat(eat_code));
		return "DetailEat";
	}
	
	@GetMapping("/addEat.do")
	public String newPassWord() {
		return "AddEat";
	}

	



}
