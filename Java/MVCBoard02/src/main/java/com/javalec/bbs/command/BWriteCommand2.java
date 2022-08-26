package com.javalec.bbs.command;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.BDao2;

public class BWriteCommand2 implements BCommand2 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String oName = request.getParameter("oName");
		String oTitle = request.getParameter("oTitle");
		String oDel = request.getParameter("oDel");
		
		BDao2 dao2 = new BDao2();
		dao2.write(oName, oTitle, oDel);
		
	}

}
