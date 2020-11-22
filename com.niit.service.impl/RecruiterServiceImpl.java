package com.niit.service.impl;

import com.niit.dao.RecruiterDao;
import com.niit.pojo.Recruiter;
import com.niit.service.RecruiterService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author qm 2020-11-15
 */

@Service
@Transactional()
public class RecruiterServiceImpl implements RecruiterService{
 
    
        @Autowired
    private RecruiterDao recruiterDao;

    @Override
    public void addRecruiter(Recruiter recruiter) {
        recruiterDao.insert(recruiter);
    }

    @Override
    public void updateRecruiter(String rname) {
         recruiterDao.update(rname);
    }

    @Override
    public void deleteRecruiter(String rname) {
        recruiterDao.deleteByname(rname);
    }

    @Override
    public List getRecruiterList() {
         return recruiterDao.getAll();
    }

    @Override
    public Recruiter validateLoginbyname(String rname, String rpwd) {
        Recruiter r = recruiterDao.getOneByName(rname);
        if(r!=null && r.getRpwd().equals(rpwd)){
            return r;
        }else{
            return null;
        }
    }

    @Override
    public Recruiter getOnebyname(String rname) {
        return recruiterDao.getOneByName(rname);
    }

    @Override
    public List getbyName(String rname) {
        return recruiterDao.getByname(rname);
    }

    @Override
    public void updateP(String rname, String rpwd) {
        recruiterDao.updateP(rname, rpwd);
    }
    
}
