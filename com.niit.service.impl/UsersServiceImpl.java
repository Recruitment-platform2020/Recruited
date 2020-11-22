/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.service.impl;

import com.niit.dao.UsersDao;
import com.niit.pojo.Users;
import com.niit.service.UsersService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author
 */
@Service
@Transactional()
public class UsersServiceImpl implements UsersService{

    @Autowired
    private UsersDao dao;

    
    @Override
    public void addUsers(Users user) {
        dao.insert(user);
    }

    @Override
    public void updateUsers(Users user) {
        dao.update(user);
    }

    @Override
    public void deleteUsersbyname(String uname) {
        dao.deletebyName(uname);
    }

    @Override
    public List getUsersList() {
        return dao.getAll();
    }

    @Override
    public Users getUserbyName(String uname) {
        return dao.getOneByName(uname);
    }

    @Override
    public Users getUserbyTel(String utel) {
        return dao.getOneByTel(utel);
    }

    @Override
    public Users getUsersbyEmail(String uemail) {
        return dao.getOneByEmail(uemail);
    }

    @Override
    public Users validateLoginbyname(String uname, String upwd) {
        Users user = dao.getOneByName(uname);
        if(user!=null && user.getUpwd().equals(upwd)){
            return user;
        }else{
            return null;
        }
    }

    @Override
    public Users validateLoginbytel(String utel, String upwd) {
        Users user = dao.getOneByTel(utel);
        if(user!=null && user.getUpwd().equals(upwd)){
            return user;
        }else{
            return null;
        }
    }

    @Override
    public Users validateLoginbyemail(String uemail, String upwd) {
        Users user = dao.getOneByEmail(uemail);
        if(user!=null && user.getUpwd().equals(upwd)){
            return user;
        }else{
            return null;
        }
    }

    @Override
    public List getbyName(String uname) {
        return dao.getByname(uname);
    }

    @Override
    public List getbyTel(String utel) {
        return dao.getBytel(utel);
    }

    @Override
    public List getbyEmail(String uemail) {
        return dao.getByemail(uemail);
    }

    @Override
    public List getbyGender(String ugender) {
        return dao.getBygender(ugender);
    }
    
}
