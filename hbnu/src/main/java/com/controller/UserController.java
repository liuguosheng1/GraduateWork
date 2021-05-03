package com.controller;
import com.entity.*;
import com.service.impl.TeacherServiceImpl;
import com.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private TeacherServiceImpl teacherService;
    @RequestMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException, ServletException {
        String number=request.getParameter("number");
        String password=request.getParameter("password");
        User user=userService.login(number,password);
        Teacher teacher=teacherService.getLogin(number);
        request.setAttribute("tnumber",number);
        if(user!=null){
            session.setAttribute("user",user);
            request.getRequestDispatcher("studentIndex.jsp").forward(request, response);

        }else if(teacher!=null && password.equals(number)){
            session.setAttribute("teacher",teacher);
            request.getRequestDispatcher("teacherIndex.jsp").forward(request,response);
        }else {
            session.setAttribute("msg","账号或者密码不正确");
            response.sendRedirect("logon.jsp");
        }

    }
    @RequestMapping("/sign")
    public String checkSign(){
        System.out.println("success");
        return "find";
    }
    @RequestMapping("/page")
    public String dispatcher(HttpServletRequest request){
        System.out.println(request.getParameter("tnumber"));
        request.setAttribute("tnumber",request.getParameter("tnumber"));
        return "createCourse";
    }
    @RequestMapping(value="/addCourse", method = RequestMethod.POST)
    public String addDepart(HttpServletRequest request, Model model){
        String tnumber=request.getParameter("tnumber");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        String time = df.format(new Date());
        String cnName=request.getParameter("cName");
        String info=request.getParameter("info");
        Course course = new Course(tnumber,time,cnName,info);
        int result = teacherService.addCouse(course);
        return "redirect:/getCourse";
    }
    @RequestMapping(value="/getCourse")
    public String getDepart(Model model){
        List<Course> courses = teacherService.getAllCourse();
        model.addAttribute("courses",courses);
        return "searchCourse";
    }
    @RequestMapping(value="/delByid/{id}")
    public String delByid(@PathVariable("id")String id){
        System.out.println(id);
        int i=teacherService.delBytime(id);
        if (i>0){
            return "redirect:/getCourse?tnumber=2017111";
        }
        return "welcome";
    }
//    @RequestMapping(value="/createDiscuss")
//    public String createDiscuss(){
//        int i=teacherService.delBytime("000");
//        if (i>0){
//            return "redirect:/getCourse?tnumber=2017111";
//        }
//        return "welcome";
//    }
    @RequestMapping(value="/deleteDiscuss")
    public void deleteDiscuss(int id){
        System.out.println(id);
    }
    @RequestMapping(value="/createDiscuss")
    public void createDiscuss(HttpServletRequest request){
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        String time = df.format(new Date());
        int i= teacherService.createDisscussion(title,content,time);
        if (i>0){
            System.out.println(title+content+time);
        }
    }
    @RequestMapping(value="/getDiscussion")
    public String getDiscuss(Model model){
        List<Discussion> discussion=teacherService.getDiscussion();
        System.out.println("到这来");
        model.addAttribute("discussion",discussion);
        return "searchDiscuss";

    }
    @RequestMapping(value="/createQuestion")
    public void createQuestion(HttpServletRequest request) {
        String title = request.getParameter("title");
        String itemA = request.getParameter("itemA");
        String itemB = request.getParameter("itemB");
        String itemC = request.getParameter("itemC");
        String itemD = request.getParameter("itemD");
        String answer = request.getParameter("answer");
        String score = request.getParameter("score");
        ClassTest classTest = new ClassTest(title, itemA, itemB, itemC, itemD, answer, score);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        String time = df.format(new Date());
        int i = teacherService.createQuestion(classTest);
        if (i>0){
            System.out.println(classTest.toString());
        }
    }
}
