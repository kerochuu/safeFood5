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

import com.ssafy.spring.service.NoticeService;
import com.ssafy.spring.vo.Notice;




@RequestMapping("/notice")
@Controller
public class NoticeController {

	NoticeService noticeService;
	@Autowired
	public void setnoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@PostMapping("/insertNotice.do")
	public String insertNotice(Notice notice) {
		noticeService.insertNotice(notice);
		return "redirect:/Notice.jsp";
	}
	
	@PostMapping("/updateNotice.do")
	public String updateNotice(HttpSession session, Notice notice, Model model) {
		noticeService.updateNotice(notice);
//		model.addAttribute("notice", noticeService.selectNotice((String) session.getAttribute("noticeId")));
		return "Notice";
	}
	
	@GetMapping("/deleteNotice.do")
	public String deleteNotice(HttpSession session, Notice notice) {
		noticeService.deleteNotice((Notice) session.getAttribute("notice_code"));
		return "redirect:/index.jsp";
	}
	

	@GetMapping("/noticePage.do")
	public String selectNoticeList(Model model) {
		model.addAttribute("NoticeList", noticeService.selectNoticeList());
		return "NoticePage";
	}
	
	@GetMapping("/selectNotice.do")
	public String serchById(int notice_code, Model model) {
		model.addAttribute("notice", noticeService.selectNotice(notice_code));
		return "DetailNotice";
	}
	
	@GetMapping("/addNotice.do")
	public String newPassWord() {
		return "AddNotice";
	}

	



}
