package com.javalec.base;

import java.util.Scanner;

public class Review2 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("첫 번째 숫자를 입력하세요:");
		int intNum1 = scanner.nextInt();
		System.out.print("두 번째 숫자를 입력하세요:");
		int intNum2 = scanner.nextInt();
		System.out.print("세 번째 숫자를 입력하세요:");
		int intNum3 = scanner.nextInt();
		
		System.out.println("덧셈: "+intNum1+"+"+intNum2+"="+(intNum1+intNum2));
		System.out.println("뺄셈: "+intNum1+"-"+intNum2+"="+(intNum1-intNum2));
		System.out.println("곱셈: "+intNum1+"*"+intNum2+"="+(intNum1*intNum2));
		System.out.println("나눗셈: "+intNum1+"/"+intNum2+"="+(intNum1/intNum2));
		System.out.println("나머지: "+intNum1+"%"+intNum2+"="+(intNum1%intNum2));
		
		System.out.println((intNum1>intNum2)?"True":"False");
		if(intNum1>intNum2) {
			System.out.println("첫 번째 숫자가 더 큽니다.");
		}else {
			System.out.println("두 번째 숫자가 더 큽니다.");
		}
	    System.out.println((intNum1>intNum2)&&(intNum2>intNum3));
	    System.out.println((intNum1>intNum2)||(intNum2>intNum3));
	    
	    if(intNum1>intNum2) {
	    	if(intNum2>intNum3){
	    		System.out.println("intNum1>intNum2>intNum3일 경우, 세 수의 차를 구하시오 : "+ (intNum1-intNum2-intNum3));
	    	}else {
	    		System.out.println("그렇지 않을경우, 세 수의 합을 구하시오 : "+(intNum1+intNum2+intNum3));
	    	}
	    }else {
	    	System.out.println("그렇지 않을경우, 세 수의 곱을 구하시오 : "+(intNum1*intNum2*intNum3));
	    }
	}
}
