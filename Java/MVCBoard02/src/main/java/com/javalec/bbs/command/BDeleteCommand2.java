package com.javalec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.BDao2;



public class BDeleteCommand2 implements BCommand2 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int oId = Integer.parseInt(request.getParameter("oId"));
		
		BDao2 dao2 = new BDao2();
		dao2.delete(oId);
		
	}

}
