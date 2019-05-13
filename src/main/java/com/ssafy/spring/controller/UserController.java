package com.ssafy.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.spring.service.UserService;
import com.ssafy.spring.vo.User;



@RequestMapping("/user")
@Controller
public class UserController {

	UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@PostMapping("/login.do")
	public String login(HttpSession session,String id,String pw) {
		User user = userService.searchById(id);
		if(user!=null && user.getUser_pw().equals(pw)) {
			session.setAttribute("userId", id);
		}
		return "MainPage";
		
	}
	@GetMapping("/logout.do")
	public String login(HttpSession session) {
		session.invalidate();
		return "redirect:/index.jsp";
	}
	

	@PostMapping("/insertUser.do")
	public String insertUser(User user) {
		userService.insertUser(user);
		return "redirect:/index.jsp";
	}
	
	@GetMapping("/addEatList.do")
	public String addEatList(/*@PathVariable*/ String user_id, String eatList) {
		userService.addEatList(new User(user_id, eatList));
		return "redirect:/food/SearchPage.do";
	}
	
	@GetMapping("/addLikeList.do")
	public String addLikeList(String user_id, String likeNum) {
		User temp = userService.searchById(user_id);
		String likeList = temp.getUser_likelist();
		
		if(likeList.contains("/" + likeNum + "-Y/"))
			System.out.println("이미 찜목록에 있어용");
		else {
			temp.setUser_likelist(likeList.replace("/"+likeNum+"-N/", "/"+likeNum+"-Y/"));
			userService.addLikeList(temp);
		}
		return "redirect:/food/SearchPage.do";
	}

	@PostMapping("/findFoodList.do")
	public User findUserWithFoodList(int user_code) {
		return userService.findUserWithFoodList(user_code);
	}
	
	@GetMapping("/userinfo.do")
	public String serchById(String user_id, Model model) {
		model.addAttribute("user", userService.searchById(user_id));
		return "MyPage";
	}
	
	@GetMapping("/join.do")
	public String getJoin() {
		return "SignUpPage";
	}


}
