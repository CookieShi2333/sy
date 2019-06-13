package com.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dao.OperationDao;
import com.entity.SelectCourse;
import com.entity.Student;
import com.entity.Teacher;


public class OperationDaoImpl implements OperationDao {

	public SelectCourse selectOneStudent(String stuId,String stuCourse){
		Session session=com.HibernateSessionFactory.getSession();
		String sql="select * from sel where stuId=? and stuCourse=?";
		SQLQuery query=session.createSQLQuery(sql).addEntity(SelectCourse.class);
		query.setString(0, stuId);
		query.setString(1, stuCourse);
		List<SelectCourse> list=query.list();
		SelectCourse se=(SelectCourse)list.get(0);
		return se;
	}
	
	

	public  List<Teacher> chooseClass(String teaId) {

		Session session=com.HibernateSessionFactory.getSession();
	     String hql="from Teacher t where t.teaId=?";
	     Query query=session.createQuery(hql);
	     query.setString(0, teaId);
	     List list=query.list();
	     return list;
	}
	
	
	
	
	 public List<SelectCourse> selectOne(String stuId) {
		 Session session=com.HibernateSessionFactory.getSession();
	     String hql="from SelectCourse se where se.stuId=?";
	     Query query=session.createQuery(hql);
	     query.setString(0, stuId);
	     List list=query.list();
	     return list;
		}
	 
	 public List<SelectCourse> selectOneClass(String stuClass,String stuCourse) {
		 Session session=com.HibernateSessionFactory.getSession();
	     String sql="select * from stu,sel where stu.stuId=sel.stuId and stuClass=? and stuCourse=? order by stuGrade desc";
	     SQLQuery query=session.createSQLQuery(sql).addEntity(SelectCourse.class);
	     query.setString(0, stuClass);
	     query.setString(1, stuCourse);
	     List<SelectCourse> list=query.list();
	     return list;
		}
	
		
	
	public int delete(String stuId, String stuCourse) {
		Session session=com.HibernateSessionFactory.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			String sql = "delete from sel where stuId = ? and stuCourse=?";
			SQLQuery query=session.createSQLQuery(sql).addEntity(SelectCourse.class);
			query.setString(0, stuId);
			query.setString(1, stuCourse);
			query.executeUpdate();
			tx.commit();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}finally{
			session.close();
		}
		return 1;
	}

	public int add(SelectCourse s) {
		Session session=com.HibernateSessionFactory.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			session.save(s);
			tx.commit();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}finally{
				session.close();
			}	
		return 1;
}
	

	public List<Student> selectOneClassId(String stuClass) {
		Session session=com.HibernateSessionFactory.getSession();
		String hql="from Student s where s.stuClass=?";
		Query query=session.createQuery(hql);
		query.setString(0, stuClass);
		List list=query.list();
		return list;
	}

	

	public int update(SelectCourse se) {
		Session session=com.HibernateSessionFactory.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
            String sql="update sel set stuGrade=? where stuId=? and stuCourse=?";
            SQLQuery query=session.createSQLQuery(sql).addEntity(SelectCourse.class);
            query.setLong(0, se.getStuGrade());
            query.setString(1, se.getStuId());
            query.setString(2, se.getStuCourse());
            int i=query.executeUpdate();  
            System.out.println(i);
			tx.commit();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}finally{
				session.close();
			}	
		return 1;
}}
