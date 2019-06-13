package com.action;

import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.Tree;

import com.entity.SelectCourse;
import com.entity.Student;
import com.entity.Teacher;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OperationService;
import com.serviceIml.OperationServiceImp;

public class OperationAction extends ActionSupport{
 private OperationService operationService=new OperationServiceImp();

 

 //修改前准备，找一个学生成绩信息
public String selectOneStudent(){
//	System.out.println("你在哪里呀");
	 String stuId=(String) ServletActionContext.getRequest().getParameter("stuId");
	 String stuCourse=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
	 SelectCourse se=(SelectCourse)operationService.selectOneStudent(stuId,stuCourse);
	 ServletActionContext.getRequest().getSession().setAttribute("se",se);
	 System.out.println(se.getStuGrade());
	 return "modify";
 }
 
	//教师删除学生成绩
	public String delete(){
		String stuId=(String) ServletActionContext.getRequest().getParameter("id");
		String stuCourse=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
		int i=operationService.delete(stuId, stuCourse);
		System.out.println(i);
		return "selectOneClass";
		
	}
	
	//教师添加学生成绩
	public String Add(){
		String stuId=(String) ServletActionContext.getRequest().getParameter("stuId");
		String stuCourse=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
		int stuGrade=Integer.parseInt(ServletActionContext.getRequest().getParameter("stuGrade"));
		SelectCourse s=new SelectCourse();
		s.setStuId(stuId);
		s.setStuCourse(stuCourse);
		s.setStuGrade(stuGrade);
		operationService.add(s);
		return "selectOneClass";//改
		
	}
	//教师选择班级
	public String chooseClass(){
		List<Teacher> chooseList=(List)operationService.chooseClass((String)ActionContext.getContext().getSession().get("username"));
		ServletActionContext.getRequest().getSession().setAttribute("chooseList",chooseList);
		String stuCourse=chooseList.get(0).getStuCourse();
		ServletActionContext.getRequest().getSession().setAttribute("stuCourse",stuCourse);
//		Iterator<Teacher> it=chooseList
		return "chooseClass";
	}
	
	public String selectOneClassId(){
		String className=(String)ServletActionContext.getRequest().getSession().getAttribute("className");
		List<Student> idList=operationService.selectOneClassId(className);
		ServletActionContext.getRequest().getSession().setAttribute("idList",idList);
		return "deleteStudent";
		
	}
	
	//学生找一个学生的全部成绩
	    public String selectOne(){
		List<SelectCourse> oneList=(List)operationService.selectOne((String)ActionContext.getContext().getSession().get("username"));
		ActionContext.getContext().getSession().put("oneList",oneList);
		
		return "showOne";
		
	}
	
	//寻找一个班的成绩
	public String selectOneClass(){
		String className=(String)ServletActionContext.getRequest().getSession().getAttribute("className");
		String courseName=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
		List<SelectCourse> oneClassList=(List)operationService.selectOneClass(className,courseName);
		ServletActionContext.getRequest().getSession().setAttribute("oneClassList",oneClassList);
		System.out.println(oneClassList.get(0).getStuGrade());
		return "showOneClass";
		
	}
	
	public String selectOneClassToUpdate(){
		String className=(String)ServletActionContext.getRequest().getSession().getAttribute("className");
		String courseName=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
		List<SelectCourse> oneClassList2=(List)operationService.selectOneClass(className,courseName);
		ServletActionContext.getRequest().getSession().setAttribute("oneClassList2",oneClassList2);
		return "update";
	}
	
	public String update(){
		
		String stuId=(String) ServletActionContext.getRequest().getParameter("stuId");
		String stuCourse=(String)((Teacher)((List)ServletActionContext.getRequest().getSession().getAttribute("chooseList")).get(0)).getStuCourse();
		int stuGrade=Integer.parseInt(ServletActionContext.getRequest().getParameter("stuGrade"));
		SelectCourse s=new SelectCourse();
		s.setStuId(stuId);
		s.setStuCourse(stuCourse);
		s.setStuGrade(stuGrade);
		System.out.println(s.getStuId());
		System.out.println(s.getStuGrade());
		int i=operationService.update(s);
		return "selectOneClass";
		
	}
	
    //获得并存储教师选择的班级名
	public String gotClass(){
		String className=(String) ServletActionContext.getRequest().getParameter("class");
		ServletActionContext.getRequest().getSession().setAttribute("className",className);
		System.out.println(className);
		return "stuAdmin_t";
	}
	
}
