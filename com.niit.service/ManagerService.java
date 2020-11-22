/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.service;

import com.niit.pojo.Manager;

/**
 *
 * @author 吕少琳
 */
public interface ManagerService {
    void addManager(Manager mamager);//添加管理员
    Manager getManagerByName(String mname);
    Manager getManagerbyTel(String mtel);
    Manager validateByName(String mname,String mpwd);
    Manager validateByTel(String mtel,String mpwd);
}
