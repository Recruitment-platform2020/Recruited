package com.niit.dao;

import com.niit.pojo.Manager;



/**
 *
 * @author 吕少琳
 */
public interface ManagerDao {
    void insert (Manager manager);
    Manager getManagerByName(String mname);
    Manager getManagerByTel(String mtel);
}
