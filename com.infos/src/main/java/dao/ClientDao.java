package dao;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ClientDao {
    private String driverName = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://8.135.93.86:3310/manage?useUnicode=true&characterEncoding=utf8";
    private String user = "root";
    private String password = "123456";

    private Connection con = null;
    private Statement st = null;
    private ResultSet rs = null;

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getSt() {
        return st;
    }

    public void setSt(Statement st) {
        this.st = st;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    //完成连接数据库操作，并生成容器返回
    public Statement getStatement() {
        try {
            Class.forName(getDriverName());
            con = DriverManager.getConnection(getUrl(), getUser(), getPassword());
            return con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
            message("无法完成数据库的连接或者无法返回容器，请检查getStatement()方法");
            return null;
        }
    }

    //添加客户信息
    public boolean addClient(String clientName,String clientTelephone,String clientAddress,String clientEmail)
    {
        try{
            String sql="insert into client"+"(clientName,clientTelephone,clientAddress,clientEmail)"+" values("+"'"+clientName+"'"+","+"'"+clientTelephone+"'"+","+"'"+clientAddress+"'"+","+"'"+clientEmail+"'"+")";
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
            return false;
        }
    }
    //查询所有客户的信息
    public ResultSet selectClient(){
        try{
            String sql="select * from client";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询客户信息，请检查selectClient()方法！");
            return null;
        }
    }
    //查询要修改的客户信息
    public ResultSet selectUpdateClient(String clientName){
        try{
            String sql="select * from client where clientName='"+clientName+"'";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询到要修改的客户信息，请检查selectUpdateClient()方法！");
            return null;
        }
    }
    //修改客户信息
    public boolean updateClient(String clientName,String clientTelephone,String clientAddress,String clientEmail){
        try{
            String sql="update client set clientName='"+clientName+"',clientTelephone="+clientTelephone+",clientAddress='"+clientAddress+"',clientEmail='"+clientEmail+"' where clientName='"+clientName+"'";
            st=getStatement();
            st.executeUpdate(sql);
            return true;

        }catch (Exception e){
            e.printStackTrace();
            message("无法进行修改客户信息，请检查updateClient()方法！");
            return false;

        }
    }
    //查询要删除的用户信息
    public ResultSet lookDeleteClient(){
        try{
            String sql="select * from client";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询到要删除的用户信息，请检查lookDeleteClient()方法！");
            return null;
        }
    }
    //删除客户信息
    public boolean deleteClient(String clientName){
        try{
            String sql="delete from client where clientName='"+clientName+"'";
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            message("删除失败！");
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
