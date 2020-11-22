package com.niit.pojo;


import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 */
public class Users  implements java.io.Serializable {


     private String uname;
     private String upic;
     private String utel;
     private String uemail;
     @DateTimeFormat(pattern = "yyyy-MM-dd")
     private Date ubirth;
     private String ugender;
     private String upwd;

    public Users() {
    }

	
    public Users(String uname, String utel, String uemail, Date ubirth, String ugender, String upwd) {
        this.uname = uname;
        this.utel = utel;
        this.uemail = uemail;
        this.ubirth = ubirth;
        this.ugender = ugender;
        this.upwd = upwd;
    }
    public Users(String uname, String upic, String utel, String uemail, Date ubirth, String ugender, String upwd) {
       this.uname = uname;
       this.upic = upic;
       this.utel = utel;
       this.uemail = uemail;
       this.ubirth = ubirth;
       this.ugender = ugender;
       this.upwd = upwd;
    }
    public Users(String uname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
    public String getUname() {
        return this.uname;
    }
    
    public void setUname(String uname) {
        this.uname = uname;
    }
    public String getUpic() {
        return this.upic;
    }
    
    public void setUpic(String upic) {
        this.upic = upic;
    }
    public String getUtel() {
        return this.utel;
    }
    
    public void setUtel(String utel) {
        this.utel = utel;
    }
    public String getUemail() {
        return this.uemail;
    }
    
    public void setUemail(String uemail) {
        this.uemail = uemail;
    }
    public Date getUbirth() {
        return this.ubirth;
    }
    
    public void setUbirth(Date ubirth) {
        this.ubirth = ubirth;
    }
    public String getUgender() {
        return this.ugender;
    }
    
    public void setUgender(String ugender) {
        this.ugender = ugender;
    }
    public String getUpwd() {
        return this.upwd;
    }
    
    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }




}


