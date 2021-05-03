package com.service.impl;

import com.entity.*;
import com.mapper.TeacherMapper;
import com.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;
    @Override
    public Teacher getLogin(String tnumber) {
        return teacherMapper.tLogin(tnumber);
    }

    @Override
    public List<Sign> getSign() {
        return null;
    }

    @Override
    public int addCouse(Course course) {
        return teacherMapper.addCourse(course);
    }

    @Override
    public List<Course> getAllCourse() {
        return teacherMapper.getAllCourses();
    }

    @Override
    public int delBytime(String time) {
        return teacherMapper.delBytime(time);
    }
    @Override
    public int createDisscussion(String title, String content, String time){
        return teacherMapper.createDiscussion(title,content,time);
    }

    @Override
    public int createQuestion(ClassTest classTest) {
        return teacherMapper.createQuestion(classTest);
    }
    @Override
    public List<Discussion> getDiscussion() {
        return teacherMapper.getDiscussion();
    }
}
