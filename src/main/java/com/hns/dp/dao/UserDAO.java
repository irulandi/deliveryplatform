package com.hns.dp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.hns.dp.beans.UserAccount;
import com.hns.dp.dbutils.ConnectionUtils;

public class UserDAO {
	private final static String QueryToFindUser = "select * from users where UserName =? and Password =?";
	
	private static Connection connection = null;
	private static ResultSet resultSet = null;
	private static Statement statement = null;
	private static PreparedStatement prepareStatement = null;
	
	public static UserAccount findUser(String userName, String password) {
		UserAccount userAccount = null;
		try {
			connection = ConnectionUtils.GetConnection();
			prepareStatement = connection.prepareStatement("select * from users where UserName =? and Password =?");
			prepareStatement.setString(1, userName);
			prepareStatement.setString(2, password);
			resultSet = prepareStatement.executeQuery();
			if (resultSet.next()) {
				userAccount = new UserAccount();
				userAccount.setUserId(resultSet.getInt("Id"));
				userAccount.setName(resultSet.getString("Name"));
				userAccount.setUserName(resultSet.getString("UserName"));
				userAccount.setOrganizationId(resultSet.getInt("OrganizationId"));
				userAccount.setOrganizationName("HnS");
			}
			
		}catch(Exception ex) {
			System.out.println("Error thrown " + ex.getMessage().toString());
		}
		finally {
	 		if (connection != null) {
	 			CloseResources();
	 		}
	 	}
		return userAccount;
	}
	
	private static void CloseResources() {
		try {
			if (statement != null) 
				statement.close();
			
			if (prepareStatement != null)
				prepareStatement.close();
			
			if (resultSet != null)
				resultSet.close();
			if (connection != null)
				ConnectionUtils.CloseQuitely(connection);
		}
		catch(Exception ex) {
			System.out.println("Error thrown " + ex.getMessage().toString());		
		}
	}
}
