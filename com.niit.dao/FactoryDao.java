package com.niit.dao;


import com.niit.pojo.Factory;
import java.util.List;

/**
 *
 * @author 吕少琳
 */
public interface FactoryDao {
    void insert(Factory factory);//插入一所公司信息
    void update(Factory factory);//更新一所公司信息
    void deletebyname(String fname);
    List<Factory> getAll();
}
