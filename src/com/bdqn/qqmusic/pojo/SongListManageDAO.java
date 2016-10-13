package com.bdqn.qqmusic.pojo;

import com.bdqn.qqmusic.dao.BaseDAO;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * SongListManage entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.bdqn.qqmusic.pojo.SongListManage
 * @author MyEclipse Persistence Tools
 */

public class SongListManageDAO extends BaseDAO {
	private static final Logger log = LoggerFactory
			.getLogger(SongListManageDAO.class);
	// property constants
	public static final String SMNAME = "smname";
	public static final String SMCALLCOUNT = "smcallcount";
	public static final String SMCOVERPATH = "smcoverpath";
	
/*---------------------------以下是手动添加的方法---------------------------*/	
	//分页
	public List<SongListManage> getSongListInPage(){
		
		
		return null;
	}
	
	
	//获取用户的"我喜欢"歌单,即查找创建时间最早的歌单
	public SongListManage getFavList(User user){
		String hql="from SongListManage songListManage " +
				   "where  songListManage.user.uid=:uid " +
				   "order by smcreatedate";
		SongListManage fav=new SongListManage();
		try {
			Query query=getSession().createQuery(hql);
			query.setProperties(user);
			query.setFetchSize(0);
			query.setMaxResults(1);
			List<SongListManage> list=query.list();
			fav=list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			getSession().close();
		}
		

		return fav;
	}
/*------------------------------------------------------------------------*/
	
	public void save(SongListManage transientInstance) {
		log.debug("saving SongListManage instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(SongListManage persistentInstance) {
		log.debug("deleting SongListManage instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SongListManage findById(java.lang.Integer id) {
		log.debug("getting SongListManage instance with id: " + id);
		try {
			SongListManage instance = (SongListManage) getSession().get(
					"com.bdqn.qqmusic.pojo.SongListManage", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(SongListManage instance) {
		log.debug("finding SongListManage instance by example");
		try {
			List results = getSession()
					.createCriteria("com.bdqn.qqmusic.pojo.SongListManage")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding SongListManage instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from SongListManage as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findBySmname(Object smname) {
		return findByProperty(SMNAME, smname);
	}

	public List findBySmcallcount(Object smcallcount) {
		return findByProperty(SMCALLCOUNT, smcallcount);
	}

	public List findBySmcoverpath(Object smcoverpath) {
		return findByProperty(SMCOVERPATH, smcoverpath);
	}

	public List findAll() {
		log.debug("finding all SongListManage instances");
		try {
			String queryString = "from SongListManage";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public SongListManage merge(SongListManage detachedInstance) {
		log.debug("merging SongListManage instance");
		try {
			SongListManage result = (SongListManage) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(SongListManage instance) {
		log.debug("attaching dirty SongListManage instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SongListManage instance) {
		log.debug("attaching clean SongListManage instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}