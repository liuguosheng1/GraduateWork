package com.mapper;

import com.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface UserMapper {
    public User login(@Param("number") String number, @Param("password")String password);
}
