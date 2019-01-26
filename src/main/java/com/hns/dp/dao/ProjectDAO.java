package com.hns.dp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hns.dp.beans.Project;
import com.hns.dp.commonutils.CommonUtils;
import com.hns.dp.dbutils.ConnectionUtils;

public class ProjectDAO {
	private final static String QueryToFetchAllProjects = "select * from Projects order by Id";
	//private final static String QueryToFetchProject = "select * from Projects where Id=?";
	//private final static String QueryToAddProject = "insert into Projects values (?,?,?,?,?,?)";
	//private final static String QueryToUpdateProject = "update Projects set Name=?,LeadId=?,IsActive=?,CreatedBy=?,CreatedOn=?,OrganizationId=? where Id=?";
	
	private static Connection connection = null;
	private static ResultSet resultSet = null;
	private static Statement statement = null;
	private static PreparedStatement prepareStatement = null;
	
	/**
	 * This method will return the list projects
	 * @return this will return list of projects of type Project
	 * */
	public static List<Project> GetProjects(){
		List<Project> projects = new ArrayList<Project>();
		
		try {
			connection = ConnectionUtils.GetConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(QueryToFetchAllProjects);
			while(resultSet.next()) {
				Project project = new Project();
				project.setName(resultSet.getString("Name"));
				project.setLeadId(resultSet.getString("LeadId"));
				project.setIsActive(resultSet.getBoolean("IsActive"));
				project.setCreatedBy("");
				project.setOrganizationId(resultSet.getInt("OrganizationId"));
				project.setCreatedOn(CommonUtils.GetCurrentDateTime());
				projects.add(project);				
			}
		}
	 	catch(Exception ex) {
	 		System.out.println("Error thrown " + ex.getMessage().toString());
	 	}
	 	finally {
	 		if (connection != null) {
	 			CloseResources();
	 		}
	 	}
		return projects;
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
