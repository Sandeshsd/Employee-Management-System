package com.employee_management.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int employeeId;
	private String emplooyeeName;
	@Column(unique = true)
	private String employeeEmail;
	private long employeePhoneNumber;
	private double employeeSalary;
	private String EmployeeDesignation;
	private int employeeExperience;
	
	@ManyToOne()
	@JoinColumn
	private Manager manager;
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmplooyeeName() {
		return emplooyeeName;
	}
	public void setEmplooyeeName(String emplooyeeName) {
		this.emplooyeeName = emplooyeeName;
	}
	public String getEmployeeEmail() {
		return employeeEmail;
	}
	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}
	public double getEmployeeSalary() {
		return employeeSalary;
	}
	public void setEmployeeSalary(double esalary) {
		this.employeeSalary = esalary;
	}
	public String getEmployeeDesignation() {
		return EmployeeDesignation;
	}
	public void setEmployeeDesignation(String employeeDesignation) {
		EmployeeDesignation = employeeDesignation;
	}
	public int getEmployeeExperience() {
		return employeeExperience;
	}
	public void setEmployeeExperience(int employeeExperience) {
		this.employeeExperience = employeeExperience;
	}
	public long getEmployeePhoneNumber() {
		return employeePhoneNumber;
	}
	public void setEmployeePhoneNumber(long employeePhoneNumber) {
		this.employeePhoneNumber = employeePhoneNumber;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}

}
