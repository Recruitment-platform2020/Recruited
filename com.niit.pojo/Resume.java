package com.niit.pojo;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;


public class Resume  implements java.io.Serializable {


     private int rid;
     private String uname;
     private String ppic;
     private String pname;
     private String pgender;
     @DateTimeFormat(pattern = "yyyy-MM-dd")
     private Date pbirth;
     private String pemail;
     private String country;
     private String nation;
     private String location;
     private String marriage;
     private String education;
     private String school;
     @DateTimeFormat(pattern = "yyyy-MM-dd")
     private Date gtime;
     private String majora;
     private String majorb;
     private String honor;
     private String course;
     private int workyear;
     private String workdetail;
     private String advantage;
     private String skillcertificates;
     private String salary;
     private String jobinten;
     private String other;
     private int jid;
     private Date atime;
     private String areason;
     private String astatus;

    public Resume() {
    }

	
    
    
    public Resume(int rid, String uname,  String pname, String pgender, Date pbirth, String pemail, String country, String nation, String location, String marriage, String education, String school, Date gtime, String majora, int workyear, String salary, String jobinten, int jid) {
        this.rid = rid;
        this.uname = uname;
//        this.ppic = ppic;
        this.pname = pname;
        this.pgender = pgender;
        this.pbirth = pbirth;
        this.pemail = pemail;
        this.country = country;
        this.nation = nation;
        this.location = location;
        this.marriage = marriage;
        this.education = education;
        this.school = school;
        this.gtime = gtime;
        this.majora = majora;
        this.workyear = workyear;
        this.salary = salary;
        this.jobinten = jobinten;
        this.jid = jid;
    }
    public Resume(int rid, String uname, String ppic, String pname, String pgender, Date pbirth, String pemail, String country, String nation, String location, String marriage, String education, String school, Date gtime, String majora, String majorb, String honor, String course, int workyear, String workdetail, String advantage, String skillcertificates, String salary, String jobinten, String other, int jid, Date atime, String areason, String astatus) {
       this.rid = rid;
       this.uname = uname;
       this.ppic = ppic;
       this.pname = pname;
       this.pgender = pgender;
       this.pbirth = pbirth;
       this.pemail = pemail;
       this.country = country;
       this.nation = nation;
       this.location = location;
       this.marriage = marriage;
       this.education = education;
       this.school = school;
       this.gtime = gtime;
       this.majora = majora;
       this.majorb = majorb;
       this.honor = honor;
       this.course = course;
       this.workyear = workyear;
       this.workdetail = workdetail;
       this.advantage = advantage;
       this.skillcertificates = skillcertificates;
       this.salary = salary;
       this.jobinten = jobinten;
       this.other = other;
       this.jid = jid;
       this.atime = atime;
       this.areason = areason;
       this.astatus = astatus;
    }
   
    public int getRid() {
        return this.rid;
    }
    
    public void setRid(int rid) {
        this.rid = rid;
    }
    public String getUname() {
        return this.uname;
    }
    
    public void setUname(String uname) {
        this.uname = uname;
    }
    public String getPpic() {
        return this.ppic;
    }
    
    public void setPpic(String ppic) {
        this.ppic = ppic;
    }
    public String getPname() {
        return this.pname;
    }
    
    public void setPname(String pname) {
        this.pname = pname;
    }
    public String getPgender() {
        return this.pgender;
    }
    
    public void setPgender(String pgender) {
        this.pgender = pgender;
    }
    public Date getPbirth() {
        return this.pbirth;
    }
    
    public void setPbirth(Date pbirth) {
        this.pbirth = pbirth;
    }
    public String getPemail() {
        return this.pemail;
    }
    
    public void setPemail(String pemail) {
        this.pemail = pemail;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getNation() {
        return this.nation;
    }
    
    public void setNation(String nation) {
        this.nation = nation;
    }
    public String getLocation() {
        return this.location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    public String getMarriage() {
        return this.marriage;
    }
    
    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }
    public String getEducation() {
        return this.education;
    }
    
    public void setEducation(String education) {
        this.education = education;
    }
    public String getSchool() {
        return this.school;
    }
    
    public void setSchool(String school) {
        this.school = school;
    }
    public Date getGtime() {
        return this.gtime;
    }
    
    public void setGtime(Date gtime) {
        this.gtime = gtime;
    }
    public String getMajora() {
        return this.majora;
    }
    
    public void setMajora(String majora) {
        this.majora = majora;
    }
    public String getMajorb() {
        return this.majorb;
    }
    
    public void setMajorb(String majorb) {
        this.majorb = majorb;
    }
    public String getHonor() {
        return this.honor;
    }
    
    public void setHonor(String honor) {
        this.honor = honor;
    }
    public String getCourse() {
        return this.course;
    }
    
    public void setCourse(String course) {
        this.course = course;
    }
    public int getWorkyear() {
        return this.workyear;
    }
    
    public void setWorkyear(int workyear) {
        this.workyear = workyear;
    }
    public String getWorkdetail() {
        return this.workdetail;
    }
    
    public void setWorkdetail(String workdetail) {
        this.workdetail = workdetail;
    }
    public String getAdvantage() {
        return this.advantage;
    }
    
    public void setAdvantage(String advantage) {
        this.advantage = advantage;
    }
    public String getSkillcertificates() {
        return this.skillcertificates;
    }
    
    public void setSkillcertificates(String skillcertificates) {
        this.skillcertificates = skillcertificates;
    }
    public String getSalary() {
        return this.salary;
    }
    
    public void setSalary(String salary) {
        this.salary = salary;
    }
    public String getJobinten() {
        return this.jobinten;
    }
    
    public void setJobinten(String jobinten) {
        this.jobinten = jobinten;
    }
    public String getOther() {
        return this.other;
    }
    
    public void setOther(String other) {
        this.other = other;
    }
    public int getJid() {
        return this.jid;
    }
    
    public void setJid(int jid) {
        this.jid = jid;
    }
    public Date getAtime() {
        return this.atime;
    }
    
    public void setAtime(Date atime) {
        this.atime = atime;
    }
    public String getAreason() {
        return this.areason;
    }
    
    public void setAreason(String areason) {
        this.areason = areason;
    }
    public String getAstatus() {
        return this.astatus;
    }
    
    public void setAstatus(String astatus) {
        this.astatus = astatus;
    }




}


