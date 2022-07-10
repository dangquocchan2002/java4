package com.poly.dao;

import java.util.List;

import javax.persistence.*;

import com.poly.model.User;
import com.poly.utils.JpaUtils;
import com.poly.utils.UserUtils;

public class UserDAO {
	public void create(User user) {
		EntityManager em = UserUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(user);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
//	tim kiem thong tin user theo id va email
	public User findByUsernameAndEmail(String id, String email) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "select u from User u where u.id=:id and u.email = :email";
		
		try {
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("id", id);
			query.setParameter("email", email);
			
			return query.getSingleResult();
		} finally {
			em.close();
			// TODO: handle exception
		}
	}

	public static void update(User user) {
		EntityManager em = UserUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();
			em.merge(user);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
	}

	public static void delete(String userId) throws Exception {
		EntityManager em = UserUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();
			User user = em.find(User.class, userId);
			if (user != null) {
				em.remove(user);
			} else {
				throw new Exception("Loi");
				
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	
	public User  findById(String userId)  {
		EntityManager em = UserUtils.getEntityManager();
		
			User user = em.find(User.class, userId);
			return user;
	}
	
	public List< User > findAll()  {
		EntityManager em = UserUtils.getEntityManager();
		
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		
			return query.getResultList();
	}
	
	public List< User > findAll(int page, int pageSize)  {
		EntityManager em = UserUtils.getEntityManager();
		
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);
		
			return query.getResultList();
	}
	
	public  User  checkLogin(String userId, String password)  {
		EntityManager em = UserUtils.getEntityManager();
		String jqpl = "select u from User u where u.id = :Id and u.password = :Password";
		
		TypedQuery<User> query = em.createQuery(jqpl, User.class);
		
		query.setParameter("Id", userId);
		query.setParameter("Password", password);
		
			return query.getSingleResult();
	}
	
	public List< User > findByFullname(String fullname)  {
		EntityManager em = UserUtils.getEntityManager();
		
		String jqpl = "select u from User u where u.fullname like :Fullname";
		
		TypedQuery<User> query = em.createQuery(jqpl, User.class);
		
		query.setParameter("Fullname", "%" + fullname + "%");
		
			return query.getResultList();
	}
	
	public int count() {
		EntityManager em = UserUtils.getEntityManager();
		String jqpl = "select count(u) from User u";
		
		Query query = em.createQuery(jqpl);
		
		return ((Long)query.getSingleResult()).intValue();
		
	}
	
	
	

	

	public static void findByRole(boolean a) {

	}

	public static void findByKeyword(String keywork) {

	}

	public static void findOne(String username, String password) {

	}

	public static void findPage(int page, int size) {

	}

	public static void main(String[] agrs) {

		// insert
		try {
			User entity = new User();
			entity.setId("TeoNVmab4c");
			entity.setFullname("abc");
			entity.setEmail("teonv@gmail.com");
			entity.setPassword("123456");
			entity.setAdmin(true);

			UserDAO dao = new UserDAO();
			dao.create(entity);
			System.out.println("Them thanh cong");
		} catch (Exception e) {
			e.printStackTrace();
		}

		// Up

	}
}
