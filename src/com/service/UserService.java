package com.service;

import com.entity.Password;


public interface UserService {
	   public boolean check(Password password);
	   public boolean addUser(Password password);
}
