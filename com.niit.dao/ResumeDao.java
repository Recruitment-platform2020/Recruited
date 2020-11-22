package com.niit.dao;

import com.niit.pojo.Resume;
import java.util.List;

public interface ResumeDao {
    void insert (Resume resume);//插入一条简历信息
    void update(Resume resume);//更新简历
    List<Resume> getResumeByname(String uname);//获取个人简历列表
    Resume getResume(String uname);
    void updateStatus(String uname);
    List<Resume> getAll();
}
