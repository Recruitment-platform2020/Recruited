package com.niit.dao.impl;

import com.niit.pojo.Users;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.niit.dao.UsersDao;
import org.springframework.stereotype.Repository;

/**
 */
@Repository
public class UsersDaoImpl implements UsersDao{

    @Autowired
    private SessionFactory sessionFactory;
    
    
    @Override
    public void insert(Users user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public void update(Users user) {
        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public void deletebyName(String uname) {
//        sessionFactory.getCurrentSession().delete(new Users(uname));
        Users user=sessionFactory.getCurrentSession().get(Users.class, uname);
        sessionFactory.getCurrentSession().delete(user);
    }
 
    @Override
    public List<Users> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    @Override
    public Users getOneByName(String uname) {
        return sessionFactory.getCurrentSession().get(Users.class, uname);
    } 

    @Override
    public Users getOneByTel(String utel) {
        return (Users) sessionFactory.getCurrentSession().createQuery("from Users where utel=:tel")
                .setParameter("tel", utel);
    }

    @Override
    public Users getOneByEmail(String uemail) {
        return (Users) sessionFactory.getCurrentSession().createQuery("from Users where uemail=:email")
                .setParameter("email", uemail);
    }

    @Override
    public List<Users> getByname(String uname) {
        return sessionFactory.getCurrentSession().createQuery("from Users where uname=:name")
        .setParameter("name", uname)
        .list();
    }

    @Override
    public List<Users> getBytel(String utel) {
        return sessionFactory.getCurrentSession().createQuery("from Users where utel=:utel")
        .setParameter("utel", utel)
        .list();
    }

    @Override
    public List<Users> getByemail(String uemail) {
        return sessionFactory.getCurrentSession().createQuery("from Users where uemail=:uemail")
        .setParameter("uemail", uemail)
        .list();
    }

    @Override
    public List<Users> getBygender(String ugender) {
        return sessionFactory.getCurrentSession().createQuery("from Users where ugender=:ugender")
        .setParameter("ugender", ugender)
        .list();
    }

   
}
