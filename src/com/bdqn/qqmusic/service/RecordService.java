package com.bdqn.qqmusic.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bdqn.qqmusic.factory.HibernateSessionFactory;
import com.bdqn.qqmusic.pojo.Company;
import com.bdqn.qqmusic.pojo.Genre;
import com.bdqn.qqmusic.pojo.Language;
import com.bdqn.qqmusic.pojo.Record;
import com.bdqn.qqmusic.pojo.RecordDAO;
import com.bdqn.qqmusic.pojo.Type;

public class RecordService implements IRecordService {
	RecordDAO dao = new RecordDAO();
	List<Record> list = new ArrayList<Record>();

	@Override
	public List<Record> getAllRecord() {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = dao.findAll();
			tx.commit();
		} catch (RuntimeException e) {
			// TODO: handle exception
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}

		return list;
	}

	@Override
	public Record getRecordById(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		RecordDAO recordDAO = new RecordDAO();
		Record R = null;

		try {
			R = recordDAO.findById(id);
			tx.commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
			tx.commit();
		} finally {
			session.close();
		}

		return R;
	}

	@Override
	public List<Record> getAllRecordsByPageNum(int pageNum, int line) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();

		Transaction tx = session.beginTransaction();

		List<Record> list = new ArrayList<Record>();
		RecordDAO recordDAO = new RecordDAO();
		try {
			list = recordDAO.getRecordsByPageNum(pageNum, line);
			tx.commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<Record> getRecordsByGenre(Genre genre) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		List<Record> list = new ArrayList<Record>();
		RecordDAO recordDAO = new RecordDAO();

		try {
			list = recordDAO.getRecordsByGenre(genre);
			tx.commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<Record> getRecordsByGenrePageNum(Genre genre, int pageNum,
			int line) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();

		Transaction tx = session.beginTransaction();

		List<Record> list = new ArrayList<Record>();
		RecordDAO recordDAO = new RecordDAO();
		try {
			list = recordDAO.getRecordsByGenrePageNum(genre, pageNum, line);
			tx.commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
		return list;
	}

	/*-↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓未完成↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-*/
	@Override
	public List<Record> getRecordsByCompany(Company company) {
		// TODO Auto-generated method stub
		 Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			List<Record> list=new ArrayList<Record>();
			RecordDAO recordDAO=new RecordDAO();
			
			try{
				list=recordDAO.getRecordsByCompany(company);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return list;
		}


	@Override
	public List<Record> getRecordsByCompanyPageNum(Company company,
			int pageNum, int line) {
		// TODO Auto-generated method stub
		 Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			List<Record> list=new ArrayList<Record>();
			RecordDAO recordDAO=new RecordDAO();
			
			try{
				list=recordDAO.getRecordsByCompanyPageNum(company, pageNum, line);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return list;
		}


	@Override
	public List<Record> getRecordsByLanguage(Language language) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		List<Record> list=new ArrayList<Record>();
		RecordDAO recordDAO=new RecordDAO();
		
		try{
			list=recordDAO.getRecordsByLanguage(language);
			tx.commit();
		}catch(RuntimeException e){
			e.printStackTrace();
			tx.rollback();
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Record> getRecotdsByLanguagePageNum(Language language,
			int pageNum, int line) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		List<Record> list=new ArrayList<Record>();
		RecordDAO recordDAO=new RecordDAO();
		
		try{
			list=recordDAO.getRecotdsByLanguagePageNum(language, pageNum, line);
			tx.commit();
		}catch(RuntimeException e){
			e.printStackTrace();
			tx.rollback();
		}finally{
			session.close();
		}
		return list;
	}
	

	@Override
	public List<Record> getRecordsByType(Type type) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		List<Record> list=new ArrayList<Record>();
		RecordDAO recordDAO=new RecordDAO();
		
		try{
			list=recordDAO.getRecordsByType(type);
			tx.commit();
		}catch(RuntimeException e){
			e.printStackTrace();
			tx.rollback();
		}finally{
			session.close();
		}
		return list;
	}
	@Override
	public List<Record> getRecordByTypePageNum(Type type, int pageNum, int line) {
		// TODO Auto-generated method stub
		 Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			List<Record> list=new ArrayList<Record>();
			RecordDAO recordDAO=new RecordDAO();
			
			try{
				list=recordDAO.getRecordByTypePageNum(type, pageNum, line);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
			return list;
		}


	@Override
	public void saveOrUpdateRecord(Record record) {
		// TODO Auto-generated method stub
		 Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();		
			RecordDAO recordDAO=new RecordDAO();
			
			try{
				recordDAO.attachDirty(record);
				tx.commit();
			}catch(RuntimeException e){
				e.printStackTrace();
				tx.rollback();
			}finally{
				session.close();
			}
		}

	/*-↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑未完成↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-*/
	@Override
	public void deleteRecord(Record record) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		RecordDAO recordDAO = new RecordDAO();
		try {
			session.delete(record);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		} finally {

			HibernateSessionFactory.getSession().close();

		}
	}

	// 有问题
	@Override
	public Record getRecordByName(String name) {
		// TODO Auto-generated method stub
		RecordDAO rd = new RecordDAO();
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		List R = rd.findByProperty("rname", name);
		tx.commit();

		return (Record) R.get(0);
	}

	
	//专辑页面的分页显示----------
	
	//每一页专辑页面所显示的专辑条数--20条
	
	
	
}
