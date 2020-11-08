package dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.JdbcUtils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDao {
    //使用Dbutils操作数据库
    private QueryRunner queryRunner=new QueryRunner();
    //update()用来执行insert/update/delete语句
    //返回-1则失败,其他则是行数
    public int update(String sql,Object ... args){
        Connection connection= JdbcUtils.getConnection();
        try {
          return  queryRunner.update(connection,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return -1;
    }
   //查询返回单个
    public <T> T  queryForOne(Class<T> type, String sql,Object ... args){
        Connection con=JdbcUtils.getConnection();
        try {
            return queryRunner.query(con,sql, new BeanHandler<T>(type), args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    //查询返回多个
    public <T>List<T> queryForList(Class<T> type, String sql,Object ... args){
        Connection con=JdbcUtils.getConnection();
        try {
            return queryRunner.query(con,sql, new BeanListHandler<>(type), args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    //返回一行一列的
    public Object queryForSingleValue(String sql,Object ... args){
        Connection conn=JdbcUtils.getConnection();
        try {
          return  queryRunner.query(conn,sql,new ScalarHandler(),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            JdbcUtils.close(conn);
        }
        return null;
    }
}
