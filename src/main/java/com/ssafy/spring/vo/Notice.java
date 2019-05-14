package com.ssafy.spring.vo;

public class Notice {
	int notice_code;
	String notice_title;
	public Notice(int notice_code, String notice_title, String notice_content, String notice_date) {
		super();
		this.notice_code = notice_code;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	String notice_content;
	String notice_date;
	public int getNotice_code() {
		return notice_code;
	}
	public void setNotice_code(int notice_code) {
		this.notice_code = notice_code;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}
	public Notice(int notice_code, String notice_content, String notice_date) {
		super();
		this.notice_code = notice_code;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
	}
	public Notice() {
		super();
	}
	@Override
	public String toString() {
		return "Notice [notice_code=" + notice_code + ", notice_content=" + notice_content + ", notice_date="
				+ notice_date + "]";
	}
	
	
}
