package com.javalec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.bbs.dto.BDto2;

public class BDao2 {
	
	DataSource dataSource;
	
	public BDao2() {
		// TODO Auto-generated constructor stub
		
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oneline");
			//Servers > context.xml 에 있는 정보로 DB 연결을 끝낸 것
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체검색
	
		//list
		public ArrayList<BDto2> list(){
			ArrayList<BDto2> dtos2 = new ArrayList<BDto2>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
			try {
				connection = dataSource.getConnection();
				String query = "select oId, oName, oTitle, oDate, oDel from one_board";
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int oId = resultSet.getInt("oId"); //1234로 써도 되고, Column 이름으로 써도 됨!
					String oName = resultSet.getString("oName");
					String oTitle = resultSet.getString("oTitle");
					Timestamp oDate = resultSet.getTimestamp("oDate");
					String oDel = resultSet.getString("oDel");
					
					BDto2 dto2 = new BDto2(oId, oName, oTitle, oDate, oDel);
					
					dtos2.add(dto2);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				//이상이 있건 없건 메모리 정리	
				try {
					if(resultSet != null) resultSet.close();
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return dtos2;
		} //list end
		
		//write
		public void write(String oName, String oTitle, String oDel) {
			
				Connection connection = null;
				PreparedStatement preparedStatement = null;
						
				try {
					connection = dataSource.getConnection();
					String query = "insert into one_board (oName,oTitle,oDate,oDel) value(?,?,now(),?)";
					preparedStatement = connection.prepareStatement(query);
					preparedStatement.setString(1,oName);
					preparedStatement.setString(2,oTitle);
					preparedStatement.setString(3,oDel);
					
					preparedStatement.executeUpdate();

					
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					//이상이 있건 없건 메모리 정리	
					try {
						if(preparedStatement != null) preparedStatement.close();
						if(connection != null) connection.close();
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
		}//write end
		
		public void delete(int oId) {
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
					
			try {
				connection = dataSource.getConnection();
				String query = "delete from one_board where oId = ?";
				preparedStatement = connection.prepareStatement(query);
				
				preparedStatement.setInt(1,oId);
				
				preparedStatement.executeUpdate();

				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				//이상이 있건 없건 메모리 정리	
				try {
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}//delete end
}
