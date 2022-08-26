package com.javalec.bbs.dto;

import java.sql.Timestamp;

public class BDto2 {
	
	//Field
		int oId;
		String oName;
		String oTitle;
		Timestamp oDate; 
		String oDel;

	//Constructor
		public BDto2() {
			// TODO Auto-generated constructor stub
		}

	public BDto2(int oId, String oName, String oTitle, Timestamp oDate, String oDel) {
		super();
		this.oId = oId;
		this.oName = oName;
		this.oTitle = oTitle;
		this.oDate = oDate;
		this.oDel = oDel;
	}

	//method
	public int getoId() {
		return oId;
	}

	public void setoId(int oId) {
		this.oId = oId;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
	}

	public String getoTitle() {
		return oTitle;
	}

	public void setoTitle(String oTitle) {
		this.oTitle = oTitle;
	}

	public Timestamp getoDate() {
		return oDate;
	}

	public void setoDate(Timestamp oDate) {
		this.oDate = oDate;
	}

	public String getoDel() {
		return oDel;
	}

	public void setoDel(String oDel) {
		this.oDel = oDel;
	}
		
		
}
