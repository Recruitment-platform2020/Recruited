/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.service.impl;

import com.niit.dao.JobRequireDao;
import com.niit.pojo.JobRequire;
import com.niit.service.JobRequireService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author 五月
 */

@Service
@Transactional()
public class JobRequireServiceImpl implements JobRequireService{
        @Autowired
    private JobRequireDao jobrequireDao;


    @Override
    public JobRequire getJobById(Integer jid) {
        return jobrequireDao.getOneById(jid);
    }

    @Override
    public List getJobList() {
        return jobrequireDao.getAll();
    }

    @Override
    public void addJob(JobRequire job) {
        jobrequireDao.insert(job);
    }

    @Override
    public void updateStatus(JobRequire job) {
        jobrequireDao.update(job);
    }

    @Override
    public void deleteJob(Integer jid) {
        jobrequireDao.deleteById(jid);
    }

    @Override
    public List getResume(String rname) {
        return jobrequireDao.getResumeByjob(rname);
    }

    @Override
    public List getUser(Integer jid) {
        return jobrequireDao.getUsersByjob(jid);
    }

    @Override
    public List getjobByRname(String rname) { 
        return jobrequireDao.getListByRname(rname);
    }

    @Override
    public List getConnect(Integer jid) {
        return jobrequireDao.getConnext(jid);
        }

    @Override
    public List getByName(String jname) {
        return jobrequireDao.getByName(jname);
    }

    @Override
    public List getByType(String jtype) {
        return jobrequireDao.getByType(jtype);
    }

    @Override
    public List getByEdu(String jedu) {
        return jobrequireDao.getByEdu(jedu);
    }

    @Override
    public List getType(String jtype, String rname) {
        return jobrequireDao.getType(jtype, rname);
    }


}
