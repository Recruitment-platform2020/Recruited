package com.niit.pojo;
// Generated 2019-12-9 19:30:40 by Hibernate Tools 4.3.1



/**
 * Factory generated by hbm2java
 */
public class Factory  implements java.io.Serializable {


     private String fname;
     private String fenglish;
     private String fintroduction;
     private String fscale;
     private String ftrade;
     private String ftype;

    public Factory() {
    }

    public Factory(String fname, String fenglish, String fintroduction, String fscale, String ftrade, String ftype) {
       this.fname = fname;
       this.fenglish = fenglish;
       this.fintroduction = fintroduction;
       this.fscale = fscale;
       this.ftrade = ftrade;
       this.ftype = ftype;
    }

    public Factory(String fname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
    public String getFname() {
        return this.fname;
    }
    
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getFenglish() {
        return this.fenglish;
    }
    
    public void setFenglish(String fenglish) {
        this.fenglish = fenglish;
    }
    public String getFintroduction() {
        return this.fintroduction;
    }
    
    public void setFintroduction(String fintroduction) {
        this.fintroduction = fintroduction;
    }
    public String getFscale() {
        return this.fscale;
    }
    
    public void setFscale(String fscale) {
        this.fscale = fscale;
    }
    public String getFtrade() {
        return this.ftrade;
    }
    
    public void setFtrade(String ftrade) {
        this.ftrade = ftrade;
    }
    public String getFtype() {
        return this.ftype;
    }
    
    public void setFtype(String ftype) {
        this.ftype = ftype;
    }




}

