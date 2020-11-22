package com.niit.dao.impl;

import com.niit.pojo.Manager;
import com.niit.dao.ManagerDao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author 吕少琳
 */
@Repository
public class ManagerDaoImpl implements ManagerDao{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insert(Manager manager) {
        sessionFactory.getCurrentSession().save(manager);
    }

    @Override
    public Manager getManagerByName(String mname) {
        return sessionFactory.getCurrentSession().get(Manager.class, mname);
    }

    @Override
    public Manager getManagerByTel(String mtel) {
        return (Manager) sessionFactory.getCurrentSession().createQuery("from Manager where mtel=:tel")
                .setParameter("tel", mtel);
    }
    
}
