package com.javalec.base;

import java.util.Scanner;

public class Condition_Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner scanner =new Scanner(System.in);
		
		System.out.print("금액을 입력하세요 : ");
		int intPrice = scanner.nextInt();
		
		if(intPrice>8000) {
			System.out.println("너무 비쌉니다.");
		}else if(intPrice>5000) {
			System.out.println("조금 비쌉니다.");
		}else if(intPrice>3000) {
			System.out.println("적당한 금액입니다.");
		}else {
			System.out.println("싼 편입니다.");
		}
		
	}

}
