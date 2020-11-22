/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.service;

import com.niit.pojo.JobRequire;
import java.util.List;

/**
 *
 * @author 五月
 */
public interface JobRequireService {
    JobRequire getJobById(Integer jid);
    
    List getJobList();
    
    void addJob(JobRequire job);
    
    void updateStatus(JobRequire job);
    
    void deleteJob(Integer jid);
    
    List getResume(String rname);
    
    List getUser(Integer jid);
    
    List getjobByRname(String rname);
    
    List getConnect(Integer jid);
    
    List getByName(String jname);
    
    List getByType(String jtype);
    List getByEdu(String jedu);
    
    List getType(String jtype,String rname);
}
