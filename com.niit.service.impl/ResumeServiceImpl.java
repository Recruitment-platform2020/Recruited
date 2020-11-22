package com.niit.service.impl;

import com.niit.dao.ResumeDao;
import com.niit.pojo.Resume;
import com.niit.service.ResumeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional()
public class ResumeServiceImpl implements ResumeService{

    @Autowired
    private ResumeDao dao; 
    
    @Override
    public void establishResume(Resume resume) {
        dao.insert(resume);
    }

    @Override
    public List getResumebyname(String uname) {
        return dao.getResumeByname(uname);
    } 

    @Override
    public void updateResume(Resume resume) {
        dao.update(resume);
    }

    @Override
    public Resume getOneResume(String uname) {
        return dao.getResume(uname);
    }

    @Override
    public void update(String uname) {
        dao.updateStatus(uname);
    }

    @Override
    public List getResume() {
        return dao.getAll();
    }
    
}
