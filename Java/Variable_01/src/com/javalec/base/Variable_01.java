package com.javalec.base;

public class Variable_01 {
	
	//Method
	public static void main(String[] args) {
		
		int intNum1 = 10;  //정수 테스트 값
		char char01 = 'A';  //문자 테스트 값
		
		System.out.println(intNum1);
		System.out.println(char01);
	
		//intNum1의 값을 100으로 변경하여 출력하기
		intNum1 = 100;
		
		System.out.println(intNum1);
		//상수 변수 정의하기
		final int fiexdNum = 100; //값 변경 불 final이라 선언해주면.... 
		System.out.println(fiexdNum);
		
		//실수 출력하기
		float floatNum1 =3.14f;
		double doubleNum1 = 3.14;
		final double pi= 3.14157;
		
		System.out.println(doubleNum1);
		System.out.println(pi);
		
		//문자열 출력하기
		String str1 ="Good Morning!"; //class로 만든 변수이므로 대문자로 시작하게 됨 다른 데이터타입과
		                              //달리 
		System.out.println(str1);
		
		//Boolean 출력하기 (show true or false)
		boolean bool1 = true; //" "  안 들어감 ----> 문자아님
		System.out.println(bool1);
		
	}
}
