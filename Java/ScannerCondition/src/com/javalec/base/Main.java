package com.javalec.base;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		//Scanner를 이용한 입력 받기
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		
		//Console에서 Data 가져오기
		System.out.print("숫자를 입력하세요!");
		int intNum1 = scanner.nextInt(); //사용자가 입력하면 해당 값이 intNum1에 할당
		
		//가져온 데이터 출력하
		System.out.println("입력한 숫자는"+intNum1+"입니다.");
	
		//입력하신 숫자는 짝수 입니다. or 홀수 입니다.
		if(intNum1%2==0) {
			System.out.println("입력하신 숫자는 짝수입니다.");
		}else {
			System.out.println("입력하신 숫자는 홀수입니다.");
		}
		
	}
}
