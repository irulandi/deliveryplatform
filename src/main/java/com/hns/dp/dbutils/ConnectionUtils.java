package com.hns.dp.dbutils;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {

	public static Connection GetConnection() throws ClassNotFoundException, SQLException {
		return DBConnectionManager.getMySqlConnection();
	}
	
	public static void CloseQuitely(Connection conn) {
		try {
			conn.close();
		}catch(Exception e) {}
	}
	
	public static void RollbackQuietly(Connection conn) {
		try {
			conn.rollback();
		}catch(Exception e) {}
	}
}
