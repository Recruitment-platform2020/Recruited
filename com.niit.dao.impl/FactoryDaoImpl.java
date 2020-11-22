package com.niit.dao.impl;

import com.niit.pojo.Factory;
import com.niit.dao.FactoryDao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author 吕少琳
 */
@Repository
public class FactoryDaoImpl implements FactoryDao{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insert(Factory factory) {
        sessionFactory.getCurrentSession().save(factory);
    }

    @Override
    public void update(Factory factory) {
        sessionFactory.getCurrentSession().update(factory);
    }

    @Override
    public void deletebyname(String fname) {
        sessionFactory.getCurrentSession().delete(new Factory(fname));  
    }

    @Override
    public List<Factory> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Factory").list();
    }
}
