package com.javalec.base;

import java.util.Scanner;

public class Score {
	public static void main(String[] args) {
	
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("국어 점수를 입력하세요! ");
		int intKor = scanner.nextInt();
		System.out.print("영어 점수를 입력하세요! ");
		int intEng = scanner.nextInt();
		System.out.print("수학 점수를 입력하세요! ");
		int intMat = scanner.nextInt();
		
		double Avg =(intKor+intEng+intMat)/3.0;
		
	
		if((0<Avg)&&(Avg>100)) {                        //평균
			System.out.println("점수 다시 입력하세요.");
		}else {
			System.out.println("평균점수 : "+ Avg );
		
		
			if((0<intKor)&&(intKor>100)){                   //국어점수
				System.out.println("점수를 잘못 입력하였습니다.");
			}else if(intKor>Avg){
				System.out.println("국어 점수는 평균보다 높습니다.");
			}else if(intKor==Avg) {
				System.out.println("국어 점수는 평균 점수입니다.");
			}else{
				System.out.println("국어 점수는 평균보다 낮습니다.");
			}
			
			if((0<intEng)&&(intEng>100)) {                   //영어점수
				System.out.println("점수를 잘못 입력하였습니다.");
			}else if((0<intEng)&&(intEng>Avg)&&(intEng<=100)) {
				System.out.println("영어 점수는 평균 점수 높습니다.");
			}else if(intEng==Avg) {
				System.out.println("영어 점수는 평균 점수입니다.");
			}else {
				System.out.println("영어 점수는 평균보다 낮습니다.");
			}
				
			if((0<intMat)&&(intMat>100)) {                   //수학점수
				System.out.println("점수를 잘못 입력하였습니다.");
			}else if(intMat>Avg){
				System.out.println("수학 점수는 평균 보다 높습니다.");
			}else if(intMat==Avg) {
				System.out.println("수학 점수는 평균 점수입니다.");
			}else {
				System.out.println("수학 점수는 평균 보다 낮습니다.");
			}
		}
	}
}
