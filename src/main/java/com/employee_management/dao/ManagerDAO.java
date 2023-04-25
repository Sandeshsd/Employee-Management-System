package com.employee_management.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.employee_management.dto.Employee;
import com.employee_management.dto.Manager;

public class ManagerDAO {
	
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("sandy");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	public void managerSignUp(Manager manager) {
		et.begin();
		em.persist(manager);
		et.commit();
	}
	public Manager managerLogin(String email,String password) {
		try {
		Query query=em.createQuery("select m from Manager m where m.managerEmail=?1 and m.managerPassword=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		Manager manager=(Manager)query.getSingleResult(); 
		return manager;
	}catch (Exception e) {
		return null;
	}
	
	}
	public void updateManager(Manager manager) {
		et.begin();
		em.merge(manager);
		et.commit();
	}
}
