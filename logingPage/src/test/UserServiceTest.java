package test;

import org.junit.Test;
import pojo.user;
import service.UserService;
import service.imp.UserServiceImpl;

import static org.junit.Assert.*;

public class UserServiceTest {
        UserService userService=new UserServiceImpl();
    @Test
    public void registUser() {
        userService.registUser(new user(null,"lhf123","14562540"));
        userService.registUser(new user(null,"xjq456","14562540"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new user(null,"admin","admin")));
    }

    @Test
    public void exitUsername() {
        if(userService.exitUsername("admin-")==true){
            System.out.println("用户名存在");
        }
        else{
            System.out.println("用户名可用");
        }
    }
}