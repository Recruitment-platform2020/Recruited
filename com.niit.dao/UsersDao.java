package com.niit.dao;


import com.niit.pojo.Users;
import java.util.List;

/*
 */
public interface UsersDao {
    void insert(Users user);//插入一条新记录到用户表
    void update(Users user);//管理员更新用户
    void deletebyName(String uname); //管理员删除用户
    List<Users> getAll(); //管理员查看所有用户
    Users getOneByName(String uname);//按姓名查找用户
    Users getOneByTel(String utel);//按手机号查找用户
    Users getOneByEmail(String uemail);//按邮箱号查找用户
    List<Users> getByname(String uname);
    List<Users> getBytel(String utel);
    List<Users> getByemail(String uemail);
    List<Users> getBygender(String ugender);
}
