package com.mapper;

import com.entity.Teacher;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

public class TeacherMapperImpl implements  TeacherMapper{
    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<Teacher> getTeacherList() {
        if (sqlSession == null){
            System.out.println(1);
        }
        TeacherMapper mapper=sqlSession.getMapper(TeacherMapper.class);
        return mapper.getTeacherList();
    }
}
