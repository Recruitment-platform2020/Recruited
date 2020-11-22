
package com.niit.service;

import com.niit.pojo.Recruiter;
import java.util.List;

/**
 *
 * @author qm  2020-11-16
 */
public interface RecruiterService {
    
     void addRecruiter(Recruiter recruiter);
     
    void updateRecruiter(String rname);

    void deleteRecruiter(String rname);
    
    List getRecruiterList();
    
    Recruiter validateLoginbyname(String rname,String rpwd);
    
    Recruiter getOnebyname(String rname);
    
    List getbyName(String rname);
    
    void updateP(String rname,String rpwd);
}
