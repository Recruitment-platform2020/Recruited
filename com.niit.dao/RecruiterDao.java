package com.niit.dao;


import com.niit.pojo.Recruiter;
import java.util.List;

/**
 *
 * @author qm
 2020-11-12
 */
public interface RecruiterDao {
    void insert(Recruiter recruiter);
    
    List<Recruiter> getAll();
    
    void update(String rname);
    
    void updateP(String rname,String rpwd);

    void deleteByname(String rname);
    
    Recruiter getOneByName(String rname);
    
    List<Recruiter> getByname(String rname);
}
