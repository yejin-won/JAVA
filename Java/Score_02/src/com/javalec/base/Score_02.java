package com.javalec.base;

import java.util.Scanner;

public class Score_02 {
	public static void main(String[] args) {
		
		System.out.println("**학점 관리**");
		
		Scanner scanner =new Scanner(System.in);
		
		System.out.print("점수를 입력하세요 : ");
		int intScore =scanner.nextInt();
		
		if((intScore<0)||(intScore>100)) {
			System.out.println("점수를 잘못입력하였습니다.");
		}else {
			if(intScore>=90) {
				System.out.println("귀하는 A학점입니다.");
			}else if(intScore>=80) {
				System.out.println("귀하는 B학점입니다.");
			}else if(intScore>=70) {
				System.out.println("귀하는 C학점입니다.");
			}else if(intScore>=60) {
				System.out.println("귀하는 D학점입니다.");
			}else {
				System.out.println("귀하는 F학점입니다.");
			}
		}
		
//		if((intScore<0)&&(intScore>100)){
//			System.out.println("점수를 잘못입력하였습니다.");
//		}else if(intScore>=90) {
//			System.out.println("귀하는 A학점입니다.");
//		}else if(intScore>=80) {
//			System.out.println("귀하는 B학점입니다.");
//		}else if(intScore>=70) {
//			System.out.println("귀하는 C학점입니다.");
//		}else if(intScore>=60) {
//			System.out.println("귀하는 D학점입니다.");
//		}else{
//			System.out.println("귀하는 F학점입니다.");
//		}
		
	}
}
