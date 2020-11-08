package service;

import pojo.user;

public interface UserService {
    //用户注册
    public void registUser(user user);
    //登录


    /**

     * @param user
     * @return  null则登录失败 有值则登录成功
     */
    public user login(user user);
    //检查用户名可用,true 用户名存在,false用户名可用
    public boolean exitUsername(String username);
}
