package dao;
import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AdminDao {
    private String driverName = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://8.135.93.86:3310/manage?useUnicode=true&characterEncoding=utf8";
    private String user = "root";
    private String password = "123456";
    private Connection con = null;
    private Statement st = null;
    private ResultSet rs = null;
    //完成连接数据库操作，并生成容器返回
    public Statement getStatement() {
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url,user,password);
            System.out.println("***"+con);
            System.out.println(url);
            return con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("无法完成数据库的连接或者无法返回容器，请检查getStatement()方法");
            return null;
        }
    }
    //查询管理员信息
    public ResultSet selectAdmin(){
        try{
            String sql="select * from admin";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("无法查询员工信息，请检查selectStaff()方法！");
            return null;
        }
    }
    public ResultSet selectUpdateAdmin(){
        try{
            String sql="select * from admin";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("无法查询到要修改的员工信息，请检查selectUpdateStaff()方法！");
            return null;
        }
    }
    public boolean updateAdmin(String adminId,String adminName,String adminPassword){
        try{
            String sql="update admin set adminId='"+adminId+"',adminName='"+adminName+"',adminPassword='"+adminPassword+"'";
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("无法进行修改个人信息");
            return false;

        }
    }



}
