package com.niit.service.impl;

import com.niit.dao.FactoryDao;
import com.niit.pojo.Factory;
import com.niit.service.FactoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author 吕少琳
 */
@Service
@Transactional()
public class FactoryServiceImpl implements FactoryService{

    @Autowired
    private FactoryDao dao;
    
    @Override
    public void addFactory(Factory factory) {
        dao.insert(factory);
    }

    @Override
    public void updateFactory(Factory factory) {
        dao.update(factory);
    }

    @Override
    public void deleteFactorybyName(String fname) {
        dao.deletebyname(fname);
    }

    @Override
    public List getFactoryList() {
        return dao.getAll();
    }
    
}
