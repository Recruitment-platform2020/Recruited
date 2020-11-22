/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controller;

import com.niit.pojo.Recruiter;
import com.niit.service.RecruiterService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author qm
   2020-11-7
 */
@Controller
@RequestMapping("/recruiter")
public class RecruiterController {
    @Autowired
    private RecruiterService recruiterService;
        
    @RequestMapping("/out")
    public String Lyout(HttpSession session,HttpServletRequest request){
        request.getSession().invalidate();
        return "index"; // 跳转到注册招聘人员的界面
    }
    
   @RequestMapping("/toAdd")
    public String toAdd(){
        return "Employeeregister"; // 跳转到注册招聘人员的界面
    }
    
    @RequestMapping("/toSearch")
    public String toSearch(){
        return "search"; // 跳转到注册招聘人员的界面
    }
    
    @RequestMapping("/toUpdate/{rname}")
    public String toUpdate(@PathVariable String rname){
        Recruiter r=recruiterService.getOnebyname(rname);

        return "update"; // 跳转到注册招聘人员的界面
    }
    
    @RequestMapping("/getOne")
    public String toGetone(String rname,Model model){
        Recruiter r=recruiterService.getOnebyname(rname);
        model.addAttribute("recruiter", r);
        return "List"; // 跳转到注册招聘人员的界面
    }
    
    @RequestMapping("/login")
    public String volidateLogin(String rname, String rpwd,HttpSession session){
        Recruiter r=recruiterService.validateLoginbyname(rname, rpwd);
        if(r==null){
            return "fail";
        }else{
            session.setAttribute("r", r);
            session.setAttribute("name", rname);
            return "newjsp";
        }
    }
    
   @RequestMapping("/AddRecruiter")
    public String AddRecruiter(Recruiter recruiter,HttpSession session){
        recruiterService.addRecruiter(recruiter);
        String rname=recruiter.getRname();
        session.setAttribute("r", recruiter);
        session.setAttribute("rname", rname);
        return "newjsp"; // 跳转到主页面
    }
    
    @RequestMapping("/showAllRecruiter")
    @ResponseBody
    public List showAllRecruiter(Model model){
        return recruiterService.getRecruiterList();
    }
    
    
    @RequestMapping("/delete")
    @ResponseBody
    public void deleteRecruiter(String rname){
        recruiterService.deleteRecruiter(rname);     
    }
    
    
    @RequestMapping("/update")
    @ResponseBody
    public void updateRecruiter(String rname){
        recruiterService.updateRecruiter(rname);
    }
    
    @RequestMapping("/updateP")
    public String updateP(String rname,String rpwd){
        recruiterService.updateP(rname, rpwd);
        return "newjsp";
    }
    
    
    @RequestMapping("/getbyname")
    @ResponseBody
    public List byName(String rname) {
        return recruiterService.getbyName(rname);
    }
}
