package com.service;

import com.entity.*;
import org.springframework.stereotype.Service;

import java.util.List;

public interface TeacherService {
    Teacher getLogin(String tnumber);
    List<Sign> getSign();

    int addCouse(Course course);

    List<Course> getAllCourse();

    int delBytime(String time);

    int createDisscussion(String title, String content,String time);

    int createQuestion(ClassTest classTest);
    List<Discussion> getDiscussion();
}
