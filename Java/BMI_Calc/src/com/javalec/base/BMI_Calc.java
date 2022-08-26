package com.javalec.base;

import java.util.Scanner;

public class BMI_Calc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("**BMI 계산기***");
		//BMI = 몸무게[kg]/(키m])^2
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("신장(cm)을 입력하세요 : ");
		double C_height = scanner.nextDouble();
		double M_height = C_height/100.0; 
		
		System.out.print("몸무게(kg)을 입력하세요 :");
		double weight =scanner.nextDouble();
		
		double BMI = weight /((M_height)*(M_height));
		
		if(C_height>300) {
			System.out.println("잘못 계산되었으니 다시 입력하세요.");			
		}else {
			if((M_height<0)&&(weight<0)) {
				System.out.println("잘못 계산되었으니 다시 입력하세요.");			
			}else {
				
			
				if(BMI<0) {
					System.out.println("잘못 계산되었으니 다시 입력하세요.");
				}
				else{
					if(BMI>=30){
						System.out.println("귀하는 고도비만입니다.");
					}else if((BMI>=25)&&(BMI<30)) {
						System.out.println("귀하는 비만입니다.");
					}else if((BMI>=23)&&(BMI<25)) {
						System.out.println("귀하는 과체중입니다.");
					}else if((BMI>=18.5)&&(BMI<23)) {
						System.out.println("귀하는 정상입니다.");
					}else {
						System.out.println("귀하는 저체중입니다.");
					}
				}
			}
		}
	}
}
