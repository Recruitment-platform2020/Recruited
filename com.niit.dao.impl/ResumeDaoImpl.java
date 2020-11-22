package com.niit.dao.impl;

import com.niit.pojo.Resume;
import com.niit.dao.ResumeDao;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ResumeDaoImpl implements ResumeDao{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insert(Resume resume) {
        sessionFactory.getCurrentSession().save(resume);
    }

    @Override
    public List<Resume> getResumeByname(String uname) {
        return sessionFactory.getCurrentSession().createQuery("from Resume where uname =:name")
        .setParameter("name", uname)
        .list();
    }

    @Override
    public void update(Resume resume) {
        sessionFactory.getCurrentSession().update(resume);
    }

    @Override
    public Resume getResume(String uname) {
         return (Resume)sessionFactory.getCurrentSession().createQuery("from Resume where uname =:name")
                .setParameter("name", uname)
                .uniqueResult();
    }

    @Override
    public void updateStatus(String uname) {
        sessionFactory.getCurrentSession().createQuery("update Resume set astatus='已通过' where uname=:name")
                .setParameter("name", uname)
                .executeUpdate();
    }

    @Override
    public List<Resume> getAll() {
         return sessionFactory.getCurrentSession().createQuery("from Resume").list();
    }
    
}
