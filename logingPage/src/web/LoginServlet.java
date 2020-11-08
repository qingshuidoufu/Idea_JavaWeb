package web;

import pojo.user;
import service.UserService;
import service.imp.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Service;
import java.io.IOException;

public class LoginServlet  extends HttpServlet {

    private  UserService userService=new UserServiceImpl();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // super.doPost(req, resp); 不能调用父类,否则405
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        user loginUser=  userService.login(new user(null,username,password));
        //判断是否登录成功
        //如果null登录失败
        if(loginUser==null){
            //登录失败,跳到登录页面
            req.getRequestDispatcher("LoginInfoWrong.jsp").forward(req,resp);
        }
        else{
            //跳回登录成功
            req.getRequestDispatcher("homePage.jsp").forward(req,resp);
        }
    }
}
