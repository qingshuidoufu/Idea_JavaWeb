package service.imp;

import dao.impl.UserDao;
import dao.impl.UserDaoImpl;
import pojo.user;
import service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao=new UserDaoImpl();
    @Override
    public void registUser(user user) {
        userDao.saveUser(user);
    }

    @Override
    //返回null登录失败,有则登录成功
    public user login(user user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean exitUsername(String username) {
        if(userDao.queryUserByUsername(username)==null){
            //等于空没查到,表示可用,传false
            return false;
        }
        else{
            return true;
        }
    }
}
