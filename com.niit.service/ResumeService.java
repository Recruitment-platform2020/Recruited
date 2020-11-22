package com.niit.service;

import com.niit.pojo.Resume;
import java.util.List;

public interface ResumeService {
    void establishResume(Resume resume);
    void updateResume(Resume resume);
    List getResumebyname(String uname);
    Resume getOneResume(String uname);
    void update(String uname);
    List getResume();
}
