package com.javalec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.BDao2;
import com.javalec.bbs.dto.BDto2;



public class BListCommand2 implements BCommand2 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BDao2 dao2 = new BDao2();
		//context.xml을 통해 데이터 불러옴
		ArrayList<BDto2> dtos2 =dao2.list();
		request.setAttribute("list", dtos2);
	}

}
