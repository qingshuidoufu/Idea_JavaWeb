package web;

import pojo.user;
import service.UserService;
import service.imp.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistServlet extends HttpServlet {
    UserService userService=new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //  super.doPost(req, resp);
        //获取请求参数
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String code=req.getParameter("code");

       //检查用户名是否可用
        if(userService.exitUsername(username)==true){
            //跳回注册页面
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }else{
            userService.registUser(new user(null,username,password));
            //跳转注册成功(未写代码)
            req.getRequestDispatcher("loging.jsp").forward(req,resp);
        }


    }
}
