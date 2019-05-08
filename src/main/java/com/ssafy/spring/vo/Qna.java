package com.ssafy.spring.vo;

public class Qna {
	int qna_code;
	String qna_text;
	int user_user_code;
	String user_user_id;
	int qna_parent;
	
	public Qna(int qna_code, String qna_text, int user_user_code, String user_user_id, int qna_parent) {
		super();
		this.qna_code = qna_code;
		this.qna_text = qna_text;
		this.user_user_code = user_user_code;
		this.user_user_id = user_user_id;
		this.qna_parent = qna_parent;
	}
	public Qna() {
		super();
	}
	
	public int getQna_code() {
		return qna_code;
	}
	public void setQna_code(int qna_code) {
		this.qna_code = qna_code;
	}
	public String getQna_text() {
		return qna_text;
	}
	public void setQna_text(String qna_text) {
		this.qna_text = qna_text;
	}
	public int getUser_user_code() {
		return user_user_code;
	}
	public void setUser_user_code(int user_user_code) {
		this.user_user_code = user_user_code;
	}
	public String getUser_user_id() {
		return user_user_id;
	}
	public void setUser_user_id(String user_user_id) {
		this.user_user_id = user_user_id;
	}
	public int getQna_parent() {
		return qna_parent;
	}
	public void setQna_parent(int qna_parent) {
		this.qna_parent = qna_parent;
	}
	@Override
	public String toString() {
		return "Qna [qna_code=" + qna_code + ", qna_text=" + qna_text + ", user_user_code=" + user_user_code
				+ ", user_user_id=" + user_user_id + ", qna_parent=" + qna_parent + "]";
	}

	
}
