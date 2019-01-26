package com.hns.dp.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.hns.dp.config.DBConfig;

public class DBConnectionManager implements DBConfig {
	public static Connection getMySqlConnection() throws ClassNotFoundException, SQLException {
		String hostName = DatabaseUrl;
	    String dbName = DatabaseName;
	    String userName = UserName;
	    String password = Password;
	    String sqlDriver = Driver; 
		return getMySqlConnection(sqlDriver,hostName, userName, password,dbName);
	}
	
	public static Connection getMySqlConnection(String SqlDriver,String HostName, String UserName, String Password, String Database) 
			throws SQLException, ClassNotFoundException {
		Connection connection = null;
		try {
			Class.forName(SqlDriver);
			String connectionUrl = HostName + Database;
			connection=DriverManager.getConnection(connectionUrl, UserName, Password);			
		}catch(Exception ex) {
			System.out.println("Error thrown : " + ex.getMessage().toString());
		}
		return connection;
	}
}
