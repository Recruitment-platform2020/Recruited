package com.niit.controller;

import com.niit.pojo.Resume;
import com.niit.service.ResumeService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/resume")
public class ResumeController {
    
    @Autowired
    private ResumeService resumeService;
    
    @RequestMapping("/getResume")
    @ResponseBody
    public Resume getResume(String uname) {
        return resumeService.getOneResume(uname);
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public void update(String uname) {
        resumeService.update(uname);
    }
    
    @RequestMapping("/toPerson")
    public String ToResume(String uname,HttpSession session){
        session.setAttribute("uname", uname);
        return "person";  
    }
    
     
    @RequestMapping("/Add")
    public String CreateResume(Resume resume){
        resumeService.establishResume(resume);
        return "main";    //建立简历后返回主页
    }
    
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "AddResume";
    }
    
    @RequestMapping("/onesresumelist")
    public String getonesResumeList(Model model,String uname){
        List<Resume> list =resumeService.getResumebyname(uname);
        model.addAttribute("resume", list);
        model.addAttribute("name",uname);
        return "ResumeList";  //返回个人简历列表页面
    }
    
    @RequestMapping("/oneresumelist")
    public String getoneResult(Model model,String uname){
        model.addAttribute("resume", resumeService.getResumebyname(uname));
        model.addAttribute("    name",uname);
        return "Checkuserinform";  //返回个人工作进度页面
    }
    
    @RequestMapping("/updateresume")
    public String UpdateResume(Resume resume){
        resumeService.updateResume(resume);
        return "ResumeList"; //返回个人简历列表页面
    }
}
