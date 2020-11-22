/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.service;

import com.niit.pojo.Factory;
import java.util.List;

/**
 *
 * @author 吕少琳
 */
public interface FactoryService {
    void addFactory(Factory factory);
    void updateFactory(Factory factory);
    void deleteFactorybyName(String fname);
    List getFactoryList();
}
