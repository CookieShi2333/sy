package com.daoImpl;

import java.util.List;

import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;


import com.dao.UserDao;
import com.entity.Password;


public class UserDaoImpl implements UserDao{
	
	public boolean check(Password password) {
		 Session session=com.HibernateSessionFactory.getSession();
	     String hql="from Password p where p.username=? and p.password=?";
	     Query query=session.createQuery(hql);
	     query.setString(0, password.getUsername());
	     query.setString(1, password.getPassword());
	     List list=query.list();
	     if(list != null){
	       return true;
	     }
	  	   return false;
	     }
	
	
	public boolean addUser(Password password) {
		 Session session=com.HibernateSessionFactory.getSession();
	     Transaction tx=null;
	     try{
	  	   tx=session.beginTransaction();
		       session.save(password);
		       tx.commit();
	     }catch(Exception e){
	  	   if(tx!=null){
	  		   tx.rollback();
	  	   }
	  	   e.printStackTrace();
	     }finally{
	  	   session.close();
	  	   return true;
	     }
	}
     
}

