package com.mapper;

import com.entity.Teacher;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public interface TeacherMapper {
     List<Teacher> getTeacherList();
}
