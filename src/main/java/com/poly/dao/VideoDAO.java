package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import org.hibernate.criterion.CriteriaQuery;

import com.poly.model.User;
import com.poly.model.Video;
import com.poly.utils.JpaUtils;
import com.poly.utils.UserUtils;
import com.poly.utils.VideoUtils;

public class VideoDAO  extends AbstractModelDAO<Video>{
	



	public VideoDAO() {
		super(Video.class);
		// TODO Auto-generated constructor stub
	}



//	public void create(Video video) {
//		EntityManager em = VideoUtils.getEntityManager();
//		EntityTransaction trans = em.getTransaction();
//		try {
//			trans.begin();
//			em.persist(video);
//			trans.commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//			trans.rollback();
//			throw e;
//		} finally {
//			em.close();
//		}
//	}
//
//	
//	
//	public static void update(Video video) {
//		EntityManager em = VideoUtils.getEntityManager();
//		EntityTransaction trans = em.getTransaction();
//
//		try {
//			trans.begin();
//			em.merge(video);
//			trans.commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			em.close();
//		}
//	}
//	
//	public static void delete(String videoId) throws Exception {
//		EntityManager em = VideoUtils.getEntityManager();
//		EntityTransaction trans = em.getTransaction();
//
//		try {
//			trans.begin();
//			Video video = em.find(Video.class, videoId);
//			if (video != null) {
//				em.remove(video);
//			} else {
//				throw new Exception("Loi");
//				
//			}
//			trans.commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//			trans.rollback();
//			throw e;
//		} finally {
//			em.close();
//		}
//	}
//	
//	public Video  findById(Integer id)  {
//		EntityManager em = UserUtils.getEntityManager();
//		
//			Video video = em.find(Video.class, id);
//			return video;
//	}
//	
//	public Video  findById(String videoId)  {
//		EntityManager em = UserUtils.getEntityManager();
//		
//			Video video = em.find(Video.class, videoId);
//			return video;
//	}
//	
//	public Video  findByPoster(String poster)  {
//		EntityManager em = UserUtils.getEntityManager();
//		
//			Video video = em.find(Video.class, poster);
//			return video;
//	}
	
	public Video findByHref(String href) {		
		String jqpl = "select u from Video u where u.poster=?0";
		
		return super.findOne(Video.class, jqpl, href);
	}
	
	
		
	
	
	
	
	public List<Video> findAll() {
		EntityManager em = VideoUtils.getEntityManager();
		TypedQuery<Video> query = em.createNamedQuery("Video.findAll", Video.class);
		return query.getResultList();
	}
	
//	public List<Video> findAll() {
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
	
//	public List< Video > findAll(int page, int pageSize)  {
//		EntityManager em = VideoUtils.getEntityManager();
//		
//		TypedQuery<Video> query = em.createNamedQuery("Video.findAll", Video.class);
//		
//		query.setFirstResult(page * pageSize);
//		query.setMaxResults(pageSize);
//		
//			return query.getResultList();
//	}
	
	public List<Video> findPage(int page, int pageSize) {
		EntityManager em = VideoUtils.getEntityManager();
		TypedQuery<Video> query = em.createNamedQuery("Video.findAll", Video.class);
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}
	
	public List<Video> findByKeyWord(String keyWord) {	
		EntityManager em = VideoUtils.getEntityManager();
		String jqpl = "select u from Video u where u.keyWord like :Title";
		
		TypedQuery<Video> query = em.createQuery(jqpl, Video.class);
		
		query.setParameter("Title","%" + keyWord + "%");
		
		return query.getResultList();
	}
}
