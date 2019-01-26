package com.hns.dp.beans;

import java.util.Date;

public class Project {

	private int Id;
	private String Name;
	private String LeadId;
	private Date CreatedOn;
	private String CreatedBy;
	private int OrganizationId;
	private boolean IsActive;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getLeadId() {
		return LeadId;
	}
	public void setLeadId(String leadId) {
		LeadId = leadId;
	}
	public Date getCreatedOn() {
		return CreatedOn;
	}
	public void setCreatedOn(Date createdOn) {
		CreatedOn = createdOn;
	}
	public String getCreatedBy() {
		return CreatedBy;
	}
	public void setCreatedBy(String createdBy) {
		CreatedBy = createdBy;
	}
	public int getOrganizationId() {
		return OrganizationId;
	}
	public void setOrganizationId(int organizationId) {
		OrganizationId = organizationId;
	}
	public boolean isIsActive() {
		return IsActive;
	}
	public void setIsActive(boolean isActive) {
		IsActive = isActive;
	}
}
