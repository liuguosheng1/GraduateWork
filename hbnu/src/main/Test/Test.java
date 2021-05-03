
import com.entity.Teacher;
import com.mapper.TeacherMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class Test {

    @Autowired
    private TeacherMapper teacherMapper;
    @org.junit.Test
    public  void test (){
      List<Teacher>list = teacherMapper.getTeacherList();
      for (Teacher item :list){
          System.out.println(item);
      }
    }

}
