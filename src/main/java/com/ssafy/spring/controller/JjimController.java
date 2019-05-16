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
import com.ssafy.spring.service.FoodService;
import com.ssafy.spring.service.JjimService;
import com.ssafy.spring.service.ValueService;
import com.ssafy.spring.vo.Eat;
import com.ssafy.spring.vo.Jjim;
import com.ssafy.spring.vo.Value;


@RequestMapping("/jjim")
@Controller
public class JjimController {
	ValueService valueService;
	JjimService jjimService;
	FoodService foodService;
	@Autowired
	public void setJjimService(JjimService jjimService) {
		this.jjimService = jjimService;
	}
	@Autowired
	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}
	@Autowired
	public void setValueService(ValueService valueService) {
		this.valueService = valueService;
	}
	
	@PostMapping("/insertJjim.do")
	public String insertJjim(String user_id, int food_code, String food_name, double nutr_cont1, double nutr_cont2, double nutr_cont3, double nutr_cont4, double nutr_cont5) {
		System.out.println("insertJjim...............................");
		System.out.println(user_id + "," + food_name + "," + nutr_cont1 + "," + nutr_cont3);
		Value temp = new Value ( user_id, nutr_cont1, nutr_cont2, nutr_cont3, nutr_cont4, nutr_cont5);
		Jjim temp2 = new Jjim(user_id, food_code, food_name);
		jjimService.insertJjim(temp2);
		
		if(valueService.searchValue(user_id) == null) {
			valueService.insertValue(temp);
		} else {
			valueService.updateValue(temp);
		}
		return "redirect:/food/SearchPage.do"; // 이부분이 문제
	}
	
	@GetMapping("/deleteJjim.do")
	public String deleteJjim(int jjim_code) {
		System.out.println("찜코드!!!! -> " + jjim_code);
		jjimService.deleteJjim(jjim_code);
		
//		System.out.println(jjimService.selectJjim(jjim_code).getJjim_user_id());
//		Value temp = new Value(
//				
//				jjimService.selectJjim(jjim_code).getJjim_user_id(),
//				foodService.selectFood(jjimService.selectJjim(jjim_code).getJjim_food_code()).getNutr_cont1(),
//				foodService.selectFood(jjimService.selectJjim(jjim_code).getJjim_food_code()).getNutr_cont2(),
//				foodService.selectFood(jjimService.selectJjim(jjim_code).getJjim_food_code()).getNutr_cont3(),
//				foodService.selectFood(jjimService.selectJjim(jjim_code).getJjim_food_code()).getNutr_cont4(),
//				foodService.selectFood(jjimService.selectJjim(jjim_code).getJjim_food_code()).getNutr_cont5()
//				
//				
//				
//				);
//		valueService.minusValue(temp);
		return "redirect:/user/userinfo_jjim.do";
	}
	

	



}
