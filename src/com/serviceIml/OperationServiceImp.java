package com.serviceIml;
import com.entity.Teacher;
import java.util.List;

import com.dao.OperationDao;
import com.daoImpl.OperationDaoImpl;
import com.entity.Student;
import com.service.OperationService;

import com.entity.SelectCourse;
public class OperationServiceImp implements OperationService {
 
	private OperationDao operation=new OperationDaoImpl();
	
	
	
	public SelectCourse selectOneStudent(String stuId,String stuCourse) {
		return operation.selectOneStudent(stuId,stuCourse);
	}
	
	public int delete(String stuId,String stuCourse) {
		return operation.delete(stuId,stuCourse);
	}
	
	public int add(SelectCourse s) { 
		return operation.add(s);
	}
	public List<Teacher> chooseClass(String teaId) {
		return operation.chooseClass(teaId);
	}
	
	public List<Student> selectOneClassId(String stuClass){
		return operation.selectOneClassId(stuClass);
	}
	
	public List<SelectCourse> selectOne(String stuId) {
		return operation.selectOne(stuId);
	}
	
	public List<SelectCourse> selectOneClass( String stuClass,String stuCourse) {
		return operation.selectOneClass(stuClass,stuCourse);
	}
	
	public int update(SelectCourse se)  {
		return operation.update(se);
	}
	
	
	

}
