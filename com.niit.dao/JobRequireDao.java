/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.dao;


import com.niit.pojo.JobRequire;
import com.niit.pojo.Resume;
import com.niit.pojo.Users;
import java.util.List;

/**
 *
 * @author 五月
 */
public interface JobRequireDao {
    
    void insert(JobRequire job);

    void update(JobRequire job);

   //企图用索引将其删除吧=-=
    void deleteById(Integer jid);
   
    List<JobRequire> getAll();

    List<JobRequire> getListByRname(String rname);
    
    List<JobRequire> getByName(String jname);
    
    JobRequire getOneById(Integer jid);
    
    List<Users> getUsersByjob(Integer jid);
    
    List<Resume> getResumeByjob(String rname);
    
    List<Object> getConnext(Integer jid);
    
    List<JobRequire> getByType(String jtype);
    
    List<JobRequire> getByEdu(String jedu);
    
    List<JobRequire> getType(String jtype,String rname);
    
}
