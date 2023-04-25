package com.employee_management.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Manager {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private int managerId;
 private String managerName;
 @Column(unique = true)
 private String managerEmail;
 private String managerPassword;
 
 @OneToMany(mappedBy = "manager" , fetch = FetchType.LAZY)
 private List<Employee> employee;

public int getManagerId() {
	return managerId;
}

public void setManagerId(int managerId) {
	this.managerId = managerId;
}

public String getManagerName() {
	return managerName;
}

public void setManagerName(String managerName) {
	this.managerName = managerName;
}

public String getManagerEmail() {
	return managerEmail;
}

public void setManagerEmail(String managerEmail) {
	this.managerEmail = managerEmail;
}

public String getManagerPassword() {
	return managerPassword;
}

public void setManagerPassword(String managerPassword) {
	this.managerPassword = managerPassword;
}

public List<Employee> getEmployee() {
	return employee;
}

public void setEmployee(List<Employee> employee) {
	this.employee = employee;
}
 
 
	
}
