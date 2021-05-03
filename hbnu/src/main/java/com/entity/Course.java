package com.entity;

public class Course {
    private Integer id;
    private String tnumber;
    private String time;
    private String course;
    private String info;

    public Course(String tnumber, String time, String course, String info) {
        this.tnumber = tnumber;
        this.time = time;
        this.course = course;
        this.info = info;
    }
    public Course(String tnumber, String time, String course, String info,Integer id) {
        this.tnumber = tnumber;
        this.time = time;
        this.course = course;
        this.info = info;
        this.id=id;
    }
    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTnumber() {
        return tnumber;
    }

    public void setTnumber(String tnumber) {
        this.tnumber = tnumber;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
