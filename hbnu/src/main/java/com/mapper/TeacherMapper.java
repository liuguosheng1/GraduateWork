package com.mapper;

import com.entity.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TeacherMapper {
    Teacher tLogin(@Param("tnumber")String tnumber);
    List<Sign> getSign();
    int addCourse(Course course);

    List<Course> getAllCourses();

    int delBytime(String id);

    int createDiscussion(@Param("title")String title, @Param("content")String content,@Param("time")String time);

    int createQuestion(ClassTest classTest);

    List<Discussion> getDiscussion();
}
