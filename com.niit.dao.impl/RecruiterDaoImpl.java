package com.niit.dao.impl;

import com.niit.pojo.Recruiter;
import com.niit.dao.RecruiterDao;
import com.niit.pojo.Users;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author qm
 2020-11-14
 */
@Repository
public class RecruiterDaoImpl implements RecruiterDao {
    
        @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Recruiter recruiter) {
        sessionFactory.getCurrentSession().save(recruiter);
    }

    @Override
    public List<Recruiter> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Recruiter").list();
    }

    @Override
    public void update(String rname) {
                sessionFactory.getCurrentSession().createQuery("update Recruiter set rstatus='已审核' where rname=:name")
                       .setParameter("name", rname)
                        .executeUpdate();
                
    }
    
     @Override
    public void updateP(String rname,String rpwd) {
                sessionFactory.getCurrentSession().createQuery("update Recruiter set rpwd=:pwd where rname=:name")
                        .setParameter("pwd", rpwd)
                       .setParameter("name", rname)
                        .executeUpdate();
                
    }

    @Override
    public void deleteByname(String rname) {
//        System.out.println(".....................");
//        System.out.println(rname);
        Recruiter r=sessionFactory.getCurrentSession().get(Recruiter.class, rname);
        sessionFactory.getCurrentSession().delete(r);
    }

    @Override
    public Recruiter getOneByName(String rname) {
        Session session = sessionFactory.getCurrentSession();
        Recruiter r = (Recruiter) session.get(Recruiter.class, rname);
        return r;
    }

    @Override
    public List<Recruiter> getByname(String rname) {
         return sessionFactory.getCurrentSession().createQuery("from Recruiter where rname=:name")
        .setParameter("name", rname)
        .list();
    }
  
}
