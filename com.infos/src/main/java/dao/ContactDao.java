package dao;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ContactDao {
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
            message("无法完成数据库的连接或者无法返回容器，请检查getStatement()方法");
            return null;
        }
    }

    //添加合同信息
    public boolean addcontact(String clientName,String contactName,String staffName,String contactContents)
    {
        try{
            String sql="insert into contact values('"+clientName+"','"+contactName+"','"+staffName+"','"+contactContents+"')";
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
    //查询所有合同信息
    public ResultSet selectcontact(){
        try{
            String sql="select * from contact";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询合同信息，请检查selectcontact()方法！");
            return null;
        }
    }
    //查询要删除的合同信息
    public ResultSet lookDelectcontact(){
        try{
            String sql="select * from";
            st=getStatement();
            return st.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
            message("无法查询到要删除的合同信息，请检查lookDeletecontact()方法！");
            return null;
        }
    }
    //删除合同信息
    public boolean delectcontatc(String contactName){
        try{
            String sql="delete from contact where contactName="+contactName;
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



