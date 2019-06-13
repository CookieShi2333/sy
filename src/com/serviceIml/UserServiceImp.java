package com.serviceIml;

import com.dao.UserDao;
import com.daoImpl.UserDaoImpl;
import com.entity.Password;
import com.service.UserService;

public class UserServiceImp implements UserService{
   private UserDao userDao=new UserDaoImpl();
     
	public UserDao getUserDao() {
	return userDao;
}

public void setUserDao(UserDao userDao) {
	this.userDao = userDao;
}

	public boolean check(Password password) {
		// TODO Auto-generated method stub
		return userDao.addUser(password);
	}



	public boolean addUser(Password password) {
		// TODO Auto-generated method stub
		return userDao.addUser(password);
	}
}
