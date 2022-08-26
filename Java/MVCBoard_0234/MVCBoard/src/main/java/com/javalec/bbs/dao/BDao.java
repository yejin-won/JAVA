package com.javalec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.bbs.dto.BDto;

public class BDao {
	DataSource dataSource;
	
	public BDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
			//Servers > context.xml 에 있는 정보로 DB 연결을 끝낸 것
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체검색
	
	//list
	public ArrayList<BDto> list(){
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select bId, bName, bTitle, bContent, bDate from mvc_board";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId"); //1234로 써도 되고, Column 이름으로 써도 됨!
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate);
				
				dtos.add(dto);
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
		return dtos;
	} //list end
	
	//write
	public void write(String bName, String bTitle, String bContent) {
		
			Connection connection = null;
			PreparedStatement preparedStatement = null;
					
			try {
				connection = dataSource.getConnection();
				String query = "insert into mvc_board (bName,bTitle,bContent,bDate) value(?,?,?,now())";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1,bName);
				preparedStatement.setString(2,bTitle);
				preparedStatement.setString(3,bContent);
				
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
	
	public BDto contentView(String sbId) {
		BDto dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from mvc_board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(sbId));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int bId = resultSet.getInt("bId"); //1234로 써도 되고, Column 이름으로 써도 됨!
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate);
				
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
		return dto;
	}//contentView
	
	public void modify(String bName, String bTitle, String bContent,int bId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
				
		try {
			connection = dataSource.getConnection();
			String query = "update mvc_board set bName = ?,bTitle = ?,bContent = ? where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1,bName);
			preparedStatement.setString(2,bTitle);
			preparedStatement.setString(3,bContent);
			preparedStatement.setInt(4,bId);
			
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
	}//modify end
	
	public void delete(int bId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
				
		try {
			connection = dataSource.getConnection();
			String query = "delete from mvc_board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setInt(1,bId);
			
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
