package com.dao;

import com.entity.Password;


public interface UserDao {
   public boolean check(Password password);
   public boolean addUser(Password password);
   
}
