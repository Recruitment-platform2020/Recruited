
package com.niit.controller;

import com.niit.pojo.JobRequire;
import com.niit.pojo.Resume;
import com.niit.pojo.Users;
import com.niit.service.JobRequireService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 五月
 */
@Controller
@RequestMapping("/job")
public class JobController {

    @Autowired
    private JobRequireService jobService;

    @RequestMapping("/insert")
    public String insertJob(JobRequire job, Model model) {
        jobService.addJob(job);
        return "main";
    }
    
    @RequestMapping("/toNew")
    public String Test() {
        return "newjsp";
    }
    
    @RequestMapping("/toManage")
    public String Manage() {
        return "管理员";
    }

    @RequestMapping("/toResume")
    public String resume() {
        return "person";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public void deleteJob(int id) {
        jobService.deleteJob(id);
    }

    @RequestMapping("/update")
    @ResponseBody
    public void updateJob(JobRequire job) {
        jobService.updateStatus(job);
    }

    @RequestMapping("/getAllJob")
    @ResponseBody
    public List getJobAll() {
        return jobService.getJobList();
    }

    @RequestMapping("/getRnameJob")
    @ResponseBody
    public List getRnameJob(String rname) {
        return jobService.getjobByRname(rname);
    }

    @RequestMapping("/search")
    public String getJobs(String jname, Model model) {
        List<JobRequire> list = jobService.getByName(jname);
        System.out.println("lllllll:" + list.size());
        model.addAttribute("jobs", list);
        return "search";
    }

    @RequestMapping("/getJobs")
    public String getJoba(String jname, Model model) {
        List<JobRequire> list = jobService.getByName(jname);

        model.addAttribute("jobs", list);
        return "search";
    }

    @RequestMapping("/getUserJob")
    public String getUserJob(int id, Model model) {
        List<Users> list = jobService.getUser(id);
        model.addAttribute("UserJob", list);
        return "招聘人员";
    }

    @RequestMapping("/getResumeJob")
    @ResponseBody
    public List getResumeJob(String rname) {
        return jobService.getResume(rname);
    }
    
    

    @RequestMapping("/oneJobRequire/{jid}")
    public String oneJobRequire(@PathVariable int jid, HttpSession session) {
        JobRequire job = jobService.getJobById(jid);
        session.setAttribute("job", job);
        return "work";
    }

    @RequestMapping("/type")
    public String byType(String jtype, Model model) {
        List<JobRequire> list = jobService.getByType(jtype);
        model.addAttribute("jobs", list);
        return "search";
    }
    
    @RequestMapping("/byType")
    @ResponseBody
    public List getType(String jtype,String rname) {
        return jobService.getType(jtype, rname);
    }

    @RequestMapping("/edu")
    public String byEdu(String jedu, Model model) {
        List<JobRequire> list = jobService.getByEdu(jedu);
        model.addAttribute("jobs", list);
        return "search";
    }

    @RequestMapping("/JobConnect")
    public String JobConnect(int id, Model model) {
        List<Object[]> list = jobService.getConnect(id);
        model.addAttribute("connect", list);
        return "JobList";
    }

}
