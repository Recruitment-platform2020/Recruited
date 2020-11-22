package com.niit.controller;

import com.niit.pojo.Factory;
import com.niit.service.FactoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 吕少琳
 */
@Controller
@RequestMapping("/factory")
public class FactoryController {
    
    @Autowired
    private FactoryService factoryService;
    
    @RequestMapping("/insert")
    public String CreateFactory(Factory factory){
        factoryService.addFactory(factory);
        return "";
    }
    
    @RequestMapping("/update")
    public String updateFactory(Factory factory){
        factoryService.updateFactory(factory);
        return "";//返回公司信息表
    }
    
    @RequestMapping("/delete")
    public String deleteFactory(String fname){
        factoryService.deleteFactorybyName(fname);
        return "";//返回公司信息表
    }
    
    @RequestMapping("/getall")
    public String getAllFactory(Model model){
        List<Factory> list =factoryService.getFactoryList();
        model.addAttribute("factory", list);
        return "FactoryList";//返回公司信息表
    }
}
