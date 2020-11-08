package dao.impl;

import pojo.user;

public interface UserDao {
    //根据用户名查询数据库是否可用,不可用返回null
    public user queryUserByUsername(String username);

    //保存用户名信息
    public int saveUser(user user);

    //根据用户名和密码查询用户,没有就返回null(名字或密码错误)
    public user queryUserByUsernameAndPassword(String username,String password);
}
