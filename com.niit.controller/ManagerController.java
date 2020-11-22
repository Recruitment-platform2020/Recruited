package com.niit.controller;

import com.niit.pojo.Manager;
import com.niit.service.ManagerService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 吕少琳
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    
    @Autowired
    private ManagerService managerService;
    
    @RequestMapping("/login")
    public String validateManager(String mname,String mpwd,HttpSession session){
//        public String validateManager(String mtel,String mpwd,HttpSession session){
        Manager manager = managerService.validateByName(mname, mpwd);
//        Manager manager = managerService.validateByTel(mtel, mpwd);
        String email=manager.getMemail();
        if(manager==null){
            return "fail"; //管理员登录失败
        }else{
            session.setAttribute("name", mname);
            session.setAttribute("email", email);
            return "管理员";  //跳转至管理员界面
        }
    }
    
    @RequestMapping("/register")
    public String Register(Manager manager,HttpSession session){
        managerService.addManager(manager);
        String name=manager.getMname();
        String email=manager.getMemail();
        session.setAttribute("name", name);
        session.setAttribute("email", email);
        return "管理员";        //管理员注册，注册成功后直接跳转至管理员界面
    }
    
    @RequestMapping("/toregister")
    public String toRegister(){
        return "Adminregister";  //跳转到管理员注册界面
    }
    
    @RequestMapping("/getmanagerbyname")
    public Manager getbyName(String mname){
        return managerService.getManagerByName(mname);
    }
    
    @RequestMapping("/toManager")
    public String toManager(){
        return "Admin";  //跳转到管理员登录界面
    }
}
