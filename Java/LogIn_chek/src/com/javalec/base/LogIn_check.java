package com.javalec.base;

import java.util.Scanner;

public class LogIn_check {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("**Log In Check**");
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("User id: "); //ID
		String ID = scanner.next();
		
		System.out.print("Password : ");  //PW
		String PW = scanner.next();
		
		if((ID.equals("root"))&&(PW.equals("1234"))){    //Log In
			System.out.println("**환영합니다.**");				
		}else {
			System.out.println("**등록된 사용자가 아닙니다.**");
		}
	}

}
