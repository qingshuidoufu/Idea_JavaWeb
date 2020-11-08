package test;

import dao.impl.UserDao;
import dao.impl.UserDaoImpl;
import org.junit.Test;
import pojo.user;

import static org.junit.Assert.*;

public class UserDaoTest {

    @Test
    public void queryUserByUsername() {
        UserDao userDao=new UserDaoImpl();
        if(userDao.queryUserByUsername("admin")==null){
            System.out.println("用户名可用");
        }
        else{
            System.out.println("用户名不可用");
        }
    }

    @Test
    public void saveUser() {
        UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.saveUser(new user(null,"nimade","123456")));
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        UserDao userDao=new UserDaoImpl();
        if(userDao.queryUserByUsernameAndPassword("admin","admin")==null){
            System.out.println("用户名或者密码错误,登录失败");
        }
        else{
            System.out.println("登录成功");
        }
    }
}