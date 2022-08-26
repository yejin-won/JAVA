package com.javalec.bbs.dto;

import java.sql.Timestamp;

public class BDto {
	//db에서 불러오는 역할이므로 네이밍 똑같이 해야함
	//검색 결과에 맞게 Dto의 갯수 결정
	
	//Field
	int bId;
	String bName;
	String bTitle;
	String bContent;
	Timestamp bDate; 
	
	
	
	//Constructor
	public BDto() {
		// TODO Auto-generated constructor stub
	
	}



	public BDto(int bId, String bName, String bTitle, String bContent, Timestamp bDate) {
		super();
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
	}


	//Method
	public int getbId() {
		return bId;
	}



	public void setbId(int bId) {
		this.bId = bId;
	}



	public String getbName() {
		return bName;
	}



	public void setbName(String bName) {
		this.bName = bName;
	}



	public String getbTitle() {
		return bTitle;
	}



	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}



	public String getbContent() {
		return bContent;
	}



	public void setbContent(String bContent) {
		this.bContent = bContent;
	}



	public Timestamp getbDate() {
		return bDate;
	}



	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	
}
