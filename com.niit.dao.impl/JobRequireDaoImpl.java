/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.dao.impl;

import com.niit.pojo.JobRequire;
import com.niit.pojo.Resume;
import com.niit.pojo.Users;
import com.niit.dao.JobRequireDao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author 五月
 */
@Repository
public class JobRequireDaoImpl implements JobRequireDao{
    
        @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void insert(JobRequire job) {
        sessionFactory.getCurrentSession().save(job);
    }

    @Override
    public void update(JobRequire job) {
        sessionFactory.getCurrentSession().update(job);
    }


    @Override
    public List<JobRequire> getAll() {
        System.out.println("hahahah");
         return sessionFactory.getCurrentSession().createQuery("from JobRequire").list();
    }

    @Override
    public List<JobRequire> getListByRname(String rname) {
        System.out.println("lalalalalal");
                return sessionFactory.getCurrentSession().createQuery("from JobRequire where rname=:name")
                .setParameter("name", rname)
                .list();
    }

    @Override
    public void deleteById(Integer jid) {
        JobRequire j = sessionFactory.getCurrentSession().get(JobRequire.class, jid);
        sessionFactory.getCurrentSession().delete(j);
    }


    @Override
    public List<Users> getUsersByjob(Integer jid) {
                return sessionFactory.getCurrentSession().createQuery("from Users where Uname in(select Uname from EmpRecords where Jid=:id)")
                .setParameter("id", jid)
                .list();
    }

    @Override
    public List<Resume> getResumeByjob(String rname) {
                return sessionFactory.getCurrentSession().createQuery("from Resume where jid in (select jid from JobRequire where rname=:name)")
                .setParameter("name", rname)
                .list();
    }

    @Override
    public JobRequire getOneById(Integer jid) {
        return (JobRequire) sessionFactory.getCurrentSession().get(JobRequire.class, jid);
    }

    @Override
    public List<Object> getConnext(Integer jid) {
                return sessionFactory.getCurrentSession().createQuery("from EmpRecords a,JobRequire b where b.Jid=:id and a.Jid=b.Jid")
                .setParameter("id", jid)
                .list();
    }

    @Override
    public List<JobRequire> getByName(String jname) {
       
        List list= sessionFactory.getCurrentSession().createQuery("from JobRequire where jname=:name")
                .setParameter("name", jname)
                .list();
       
        return list;
    }

    @Override
    public List<JobRequire> getByType(String jtype) {
        return sessionFactory.getCurrentSession().createQuery("from JobRequire where jtype=:type")
                .setParameter("type", jtype)
                .list();
    }

    @Override
    public List<JobRequire> getByEdu(String jedu) {
        return sessionFactory.getCurrentSession().createQuery("from JobRequire where jedu=:edu")
                .setParameter("edu", jedu)
                .list();
    }

    @Override
    public List<JobRequire> getType(String jtype, String rname) {
         return sessionFactory.getCurrentSession().createQuery("from JobRequire where jtype=:type and rname=:name")
                .setParameter("type", jtype)
                 .setParameter("name",rname)
                .list();
    }



   
}
