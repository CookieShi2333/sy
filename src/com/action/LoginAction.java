package com.action;



import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Password;
import com.entity.Student;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;
import com.serviceIml.UserServiceImp;

public class LoginAction extends ActionSupport implements ModelDriven<Password>{
   private Password password=new Password();
   private UserService userService=new UserServiceImp();

	
public UserService getUserService() {
	return userService;
}

public void setUserService(UserService userService) {
	this.userService = userService;
}

	public String register()  {
		 boolean i= userService.addUser(password);
		 if(i){
		  return SUCCESS;
		 }
		 return ERROR;
		
	       }
		
	
	public String userlogin(){
		boolean i= userService.addUser(password);
		ActionContext.getContext().getSession().put("username",password.getUsername());
		if(i){
		if(password.getActor().equals("student")){
			return "stuAdmin_s";
		}else{
			return "chooseClass";
		}}
		return ERROR;
		
	}

	public Password getModel() {
		// TODO Auto-generated method stub
		return password;
	}

}
