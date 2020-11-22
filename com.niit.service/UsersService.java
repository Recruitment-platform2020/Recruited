package com.niit.service;

import com.niit.pojo.Users;
import java.util.List;

/*
 */
public interface UsersService {
    void addUsers(Users user);
    void updateUsers(Users user);
    void deleteUsersbyname(String uname);
    List getUsersList();
    Users getUserbyName(String uname);
    Users getUserbyTel(String utel);
    Users getUsersbyEmail(String uemail);
    Users validateLoginbyname(String uname,String upwd);
    Users validateLoginbytel(String utel,String upwd);
    Users validateLoginbyemail(String uemail,String upwd);
    List getbyName(String uname);
    List getbyTel(String utel);
    List getbyEmail(String uemail);
    List getbyGender(String ugender);
    
}
