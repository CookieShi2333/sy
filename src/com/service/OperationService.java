package com.service;

import java.util.List;

import com.entity.SelectCourse;
import com.entity.Student;
import com.entity.Teacher;

public interface OperationService {
	public SelectCourse selectOneStudent(String stuId,String stuCourse) ;
	
	public int delete(String stuId,String stuCourse) ;
	
	public int add(SelectCourse s);
	
	public List<Teacher> chooseClass(String teaId) ;
	
	public List<Student> selectOneClassId(String stuClass);
	
	public List<SelectCourse> selectOne(String stuId);
	
	
	public List<SelectCourse> selectOneClass( String stuClass,String stuCourse) ;
	
	public int update(SelectCourse se)  ;
	

	
	
	   
}
