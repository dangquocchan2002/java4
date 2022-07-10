package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;

import com.poly.utils.JpaUtils;

public abstract class AbstractModelDAO<T> {
	private Class<T> modelClass;
	
	public AbstractModelDAO(Class<T> cls) {
		this.modelClass = cls;
	}
	public void create(T model) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			em.persist(model);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	
	public void update(T model) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			em.merge(model);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	
	public void delete(Object id) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			
			T model = em.find(modelClass, id);
			em.remove(model);
			
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	
	public T findById(Object id) {
		EntityManager em = JpaUtils.getEntityManager();
		
		T model = em.find(modelClass, id);
		return model;
	}
	
//	public List<T> findAll() {
//		EntityManager em = JpaUtils.getEntityManager();
//		try {
//			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
//			cq.select(cq.from(modelClass));
//			
//			return em.createQuery(cq).getResultList();
//		} finally {
//			em.close();
//		}
//	}
	
	public List<T> findAll(boolean all, int firstResult, int maxResult) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			cq.select(cq.from(modelClass));
			Query q = em.createQuery(cq);
			if (!all) {
				q.setFirstResult(firstResult);
				q.setMaxResults(maxResult);
			}		
			return q.getResultList();
		} finally {
			em.close();
		}
	}
	
	public T findOne(Class<T> class1, String jpql, Object ... params) {
		EntityManager em = JpaUtils.getEntityManager();
		
		TypedQuery<T> query = em.createQuery(jpql, class1);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		List<T> result = query.getResultList();
		
		if (result.isEmpty()) {
			return null;
		}
		
		return result.get(0);
	}
	
	public long count() {
		EntityManager em = JpaUtils.getEntityManager();
		
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			Root<T> rt = cq.from(modelClass);
			
			cq.select(em.getCriteriaBuilder().count(rt));
			Query q = em.createQuery(cq);
			
			return (long) q.getSingleResult();
		} finally {
			em.close();
		}
	}
}
