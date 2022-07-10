package com.poly.utils;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
public class JpaUtils {
	private static EntityManagerFactory factory;
	public static EntityManager getEntityManager() {
			if(factory == null || !factory.isOpen()) {
				factory = Persistence.createEntityManagerFactory("ChandqPD05208_ASM");
			}
			return factory.createEntityManager();
			
	}
	public static void shutdown() {
		if(factory!= null && factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}
	
}
