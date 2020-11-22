package com.niit.service.impl;

import com.niit.dao.ManagerDao;
import com.niit.pojo.Manager;
import com.niit.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author 吕少琳
 */
@Service
@Transactional()
public class ManagerServiceImpl implements ManagerService{
    
    @Autowired
    private ManagerDao dao;
    
    @Override
    public void addManager(Manager mamager) {
        dao.insert(mamager);
    }

    @Override
    public Manager getManagerByName(String mname) {
        return dao.getManagerByName(mname);
    }
       
    @Override
    public Manager validateByName(String mname, String mpwd) {
        Manager m=dao.getManagerByName(mname);
        if(m != null && m.getMpwd().equals(mpwd)){
            return m;
        }else{
            return null;
        }
    }
    
    @Override
    public Manager validateByTel(String mtel, String mpwd) {
        Manager m=dao.getManagerByTel(mtel);
        if(m != null && m.getMpwd().equals(mpwd)){
            return m;
        }else{
            return null;
        }
    }

    @Override
    public Manager getManagerbyTel(String mtel) {
         return dao.getManagerByTel(mtel);
    }


}
