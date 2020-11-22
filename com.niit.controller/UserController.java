package com.niit.controller;

import com.niit.pojo.Users;
import com.niit.service.UsersService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 宋广雪
 */
@Controller
@RequestMapping("/users")
public class UsersController {
    
    @Autowired
    private UsersService usersService;
 
    @RequestMapping("/login")
    public String validateLogin(String umessage, String upwd,HttpSession session){
//        Users user1=usersService.validateLoginbyemail(umessage, upwd);
        Users user2=usersService.validateLoginbyname(umessage, upwd);
//        Users user3=usersService.validateLoginbytel(umessage, upwd);
//        if(user1==null&&user2==null&&user3==null){
        if(user2==null){
//        if(user3==null){
//        if(user1==null){
            return "fail";
        }else{
            session.setAttribute("name",umessage);
            session.setAttribute("u", user2);
            return "main";
        }
    }
 
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "Userregister";
    }
    
    @RequestMapping("/register")
    public String register(Users user,HttpSession session){
        usersService.addUsers(user);
        String name=user.getUname();
        session.setAttribute("name", name);
        return "main";
    }
    
    @RequestMapping("/toUserinfo")
    public String Userinfo(){
        return "Userinform";
    }
    
    @RequestMapping("/checkuser")
    public String Checkuserinfo(){
        return "Checkuserinform";
    }
    
    @GetMapping("/toupdate/{uname}")
    public String toEditStudent(@PathVariable String uname, Model model) {
        model.addAttribute("user", usersService.getUserbyName(uname));
        return "User-edit";
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public void updateUser(Users user){
        usersService.updateUsers(user);
    }
    
    @RequestMapping("/delete")
    @ResponseBody
    public void deleteUser(String uname){
        usersService.deleteUsersbyname(uname);
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public List getAllUsers(Model model){
        return usersService.getUsersList();  
    }
       
    @RequestMapping("/getbyname")
    @ResponseBody
    public List byName(String uname) {
        return usersService.getbyName(uname);
    }
    
    @RequestMapping("/getbytel")
    @ResponseBody
    public List byTel(String utel) {
        return usersService.getbyTel(utel);
    }
    
    @RequestMapping("/getbyemail")
    @ResponseBody
    public List byEmail(String uemail) {
        return usersService.getbyEmail(uemail);
    }
    
    @RequestMapping("/getbygender")
    @ResponseBody
    public List byGender(String ugender) {
        return usersService.getbyGender(ugender);
    }
    
//    @RequestMapping("/getuserbyname")
//    @ResponseBody
//    public String getUsersbyName(String uname,Model model){
//        Users user =usersService.getUserbyName(uname);
//        model.addAttribute("showuser", user);
//        model.addAttribute("uname",uname);
//        return "管理员";
//    }
//    
    
    @RequestMapping("/getuserbyname")
    @ResponseBody
    public Users getUsersbyName(String uname){
        return usersService.getUserbyName(uname);
    }
    
    
    @RequestMapping("/getuserbytel")
    public Users getUsersbyTel(String utel){
        return usersService.getUserbyTel(utel);
    }
    
    
    @RequestMapping("/getuserbyemail")
    public Users getUsersbyEmail(String uemail){
        return usersService.getUsersbyEmail(uemail);
    }

}
