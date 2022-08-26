package com.javalec.base;

public class Variable_03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int i1 = 10;
		double d1 = i1; //int 와 double type다름
		//이를 묵시적 형변환 : 작은 Date Type이큰 Data Type에 흡수되는 것
		//[type] A=B B가 A에 할당되는 것
		
	System.out.println("d1의 데이터는"+d1+"입니다.");
	
	double d2 = 10.0;
	int i2 = (int) d2; //명시적 형변환 (큰 Data type---> 작은 Data type)----> 데이터손실 발생
	System.out.println("i2의 데이터는"+i2+"입니다.");
	
	}

}
