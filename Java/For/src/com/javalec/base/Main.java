package com.javalec.base;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		int Sumeven=0; //짝수 합
		int Sumodd=0; //홀수 합
		
		for(int i=1;i<=100;i++) {
			if(i%2==0) {
				Sumeven+=i;
			}else {
				Sumodd+=i;
			}
		}
		System.out.println("1~100 짝수의 합 : "+ Sumeven);
		System.out.println("1~100 홀수의 합 : "+ Sumodd );
		
		
//		for(int i=1;i<=10;i+=2) {
//			System.out.println(i);
//		}
//	
//		System.out.println(" ");
//		
//		for(int j=1;j<=10;j+=1) {
//			System.out.println(j);
//		}
//		int sum=0;
//		for(int i=1;i<=10;i++) {
//			
//			sum+=i; //sum=sum+i
//			System.out.println("합계 : " + sum); //1부터 55까지 출력됨 (sum+i) : (0+1),(1+2),(3+3),......
//		}
//		System.out.println("1~10까지 합 : " + sum); //최종 값만 출
//		
	}
}
