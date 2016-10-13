package com.bdqn.qqmusic.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bdqn.qqmusic.factory.HibernateSessionFactory;
import com.bdqn.qqmusic.pojo.Artist;
import com.bdqn.qqmusic.pojo.ArtistDAO;
import com.bdqn.qqmusic.pojo.Nation;

public class ArtistService implements IArtistService {

	ArtistDAO artistDAO=new ArtistDAO();
	public List<Artist> getArtistByName(String name) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		List<Artist> list=null;
		try{
			list=artistDAO.findByAname(name);
			tx.commit();
		}catch(RuntimeException e){
			e.printStackTrace();
			tx.rollback();
		}finally{
			session.close();
		}
		return list;
	}

	
	//2	用id获取Artist
		public Artist getArtistById(int id) {					//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			Artist artist=new Artist();
			try{
				artist=artistDAO.findById(id);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return artist;
		}
		//3	pageNum当前所在页；line一页有多少行artist
		public List<Artist> getArtistsByNationPageUnm(Nation Nation, int pageNum,				//nufinish
				int line) {
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Query q=session.createQuery("from Artist a where a.nation.nid=:nid");
			//从第几条开始
			//limit 5,5 第二页的内容，显示5条
			q.setFirstResult((pageNum-1)*5);
			//显示多少条
			q.setMaxResults(line);
			q.setProperties(Nation);	
			List list=q.list();
			return list;
		}
		//4	用Nation获取Artist
		public List<Artist> getArtistsByNation(Nation nation) {					//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			
			List<Artist> list=null;
			String sql="from Artist a where a.nation.nid=:nid";
			Query q=session.createQuery(sql);
			q.setProperties(nation);
			list=q.list();
			return list;
		}
		//5	获取Artist
		public List<Artist> getAllArtists() {								//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			List<Artist> list=null;
			try{
				list=artistDAO.findAll();
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return list;
		}
		//6	增加Artist
		public void addArtist(Artist artist) {					//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			//List<Artist> list=null;
			try{			
				artistDAO.save(artist);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
		}
		//7	删除Artist
		public void deleteArtist(Artist artist) {				//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			//List<Artist> list=null;
			try{
				//Artist artist1=artistDAO.get(artist.getAid());
				artistDAO.delete(artist);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
		}
		//8	编辑Artist
		public void editArtist(Artist Artist) {				//finish
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			try{
				artistDAO.merge(Artist);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}			
		}	
		
		//9 属性+属性内容查询
		public List<Artist> findByProperty(String propertyName, Object value){
			
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			List<Artist> list=null;
			try{
				list=artistDAO.findByProperty(propertyName, value);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return list;
			
		}

}
