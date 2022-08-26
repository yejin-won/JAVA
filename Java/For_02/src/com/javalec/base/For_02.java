package com.javalec.base;

import java.util.Scanner;

public class For_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int Total=0;
		int Sumeven=0; //짝수의 합
		int Sumodd=0; //홀수의 합
		double average=0;
		
		Scanner scanner =new Scanner(System.in);
		System.out.print("Start Number : ");
		int StartNum=scanner.nextInt();
		System.out.print("End Number : ");
		int EndNum=scanner.nextInt();
		
		for(int intNum=StartNum;intNum<=EndNum;intNum++) {
			
			Total+=intNum;
			
			if(intNum%2==0) {
				Sumeven+=intNum;
			}else {
				Sumodd+=intNum;
			}
		}
		average=(double)(Total)/(EndNum-StartNum+1);
		//other sol. avg=(Sumeven+Sumodd)/(EndNum-StartNum+1)   or   avg=(StartNum+EndNum)/2(1씩 증가할경우에만(엄밀히 중앙값 구하기))
		System.out.println(StartNum+"부터 "+EndNum+"까지의 수 중 짝수의 합은 "+ Sumeven + "이고 " +"홀수의 합은 "+Sumodd+"이고"
				+"전체 평균은 "+average+" 입니다.");
	}

}
