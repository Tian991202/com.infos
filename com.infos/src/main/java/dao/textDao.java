package dao;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class textDao {
    private String driverName = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://8.135.93.86:3310/manage?useUnicode=true&characterEncoding=utf8";
    private String user = "root";
    private String password = "123456";


    //    public String getDriverName() {
//        return driverName;
//    }
//
//    public void setDriverName(String driverName) {
//        this.driverName = driverName;
//    }
//
//    public String getUrl() {
//        return url;
//    }
//
//    public void setUrl(String url) {
//        this.url = url;
//    }
//
//    public String getUser() {
//        return user;
//    }
//
//    public void setUser(String user) {
//        this.user = user;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public Connection getCon() {
//        return con;
//    }
//
//    public void setCon(Connection con) {
//        this.con = con;
//    }
//
//    public Statement getSt() {
//        return st;
//    }
//
//    public void setSt(Statement st) {
//        this.st = st;
//    }
//
//    public ResultSet getRs() {
//        return rs;
//    }
//
//    public void setRs(ResultSet rs) {
//        this.rs = rs;
//    }
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
            message("无法完成数据库的连接或者无法返回容器，请检查getStatement()方法");
            return null;
        }
    }

    //管理员登录
    public ResultSet LoginAdmin(String adminName,String adminPassword){
        try{
            String sql="SELECT * FROM admin where adminName='"+adminName+"' and adminPassword='"+adminPassword+"'";
            System.out.println(sql);
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("登录不了！");
            return null;
        }
    }


    //添加员工信息
    public boolean addStaff(String staffName,String staffSex,String staffAge,String staffDuty,String staffWage)
    {
        try{
            String sql="insert into staff values('"+staffName+"','"+staffSex+"','"+staffAge+"','"+staffDuty+"','"+staffWage+"')";
            st=getStatement();
            int row=st.executeUpdate(sql);
            if(row==1){
                st.close();
                con.close();
                return true;
            }else{
                st.close();
                con.close();
                return false;
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("添加出错");
            return false;
        }
    }
//    public static void main(String ar[]){
//        StaffDao st=new StaffDao();
//        System.out.println(st.addStaff("s" ,"d","d","d","d"));
//    }


    //查询所有员工的信息
    public ResultSet selectStaff(){
        try{
            String sql="select * from staff";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询员工信息，请检查selectStaff()方法！");
            return null;
        }
    }
    //查询要修改的员工信息
    public ResultSet selectUpdateStaff(String staffName){
        try{
            String sql="select * from staff where staffName='"+staffName+"'";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询到要修改的员工信息，请检查selectUpdateStaff()方法！");
            return null;
        }
    }
    //修改客户信息
    public boolean updateStaff(String staffName,String staffSex,String staffAge,String staffDuty,String staffWage){
        try{
            String sql="update cs set staffName='"+staffName+"',staffSex='"+staffSex+"',staffAge='"+staffAge+"' ,staffDuty='"+staffDuty+"',staffWage='"+staffWage+"'where staffName="+staffName;
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            message("无法进行修改员工信息，请检查updateCs()方法！");
            return false;

        }
    }
    //查询要删除的员工信息
    public ResultSet lookDeleteStaff(){
        try{
            String sql="select * from staff";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询到要删除的员工信息，请检查lookDeleteCs()方法！");
            return null;
        }
    }
    //删除员工信息
    public boolean deleteStaff(String NO){
        try{
            String sql="delete from staff where staffName="+NO;
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    // 消息框
    public void message(String msg){
        int type= JOptionPane.YES_NO_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null,msg,title,type);
    }
}