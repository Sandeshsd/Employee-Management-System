package com.employee_management.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.employee_management.dto.Employee;
import com.employee_management.dto.Manager;

public class EmployeeDAO {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("sandy");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	public void saveEmployee(Employee employee) {
		et.begin();
		em.persist(employee);
		et.commit();
	}
	public Employee getEmployeeById(int employeeId) {
		return em.find(Employee.class, employeeId);
	}
	
	public List<Employee> getAllEmployees(Manager manager){
		Query query=em.createQuery("select e from Employee e");
	     List employees=query.getResultList();
	     return employees;
	     
	}
	public void updateEmployee(Employee employee) {
		et.begin();
		em.merge(employee);
		et.commit();
	}
	public void deleteEmployee(int employeeId) {
		et.begin();
		em.remove(em.find(Employee.class, employeeId));
		et.commit();
	}
}
