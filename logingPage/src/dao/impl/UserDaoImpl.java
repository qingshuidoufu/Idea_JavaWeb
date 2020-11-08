package dao.impl;

import pojo.user;

public class UserDaoImpl extends BaseDao implements UserDao{

    @Override
    public user queryUserByUsername(String username) {
        String sql ="select `id`,`username`,`password`from myuser where username=?";
        return queryForOne(user.class,sql,username);
    }

    @Override
    public int saveUser(user user) {
        String sql="insert into myuser (`username`,`password`) values (?,?); ";
        return update(sql,user.getUsername(),user.getPassword());
    }

    @Override
    public user queryUserByUsernameAndPassword(String username, String password) {
        String sql ="select `id`,`username`,`password`from myuser where username=? and password=?";
        return queryForOne(user.class,sql,username,password);
    }
}
