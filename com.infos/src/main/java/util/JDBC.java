package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBC {
    private String url="jdbc:mysql://8.135.93.86/manage?useUnicode=true&characterEncoding=utf8";
    private String username="root";
    private String password="123456";
    private String jdbcName="com.mysql.jdbc.Driver";

    public Connection getCon(){
        try{
            Class.forName(jdbcName);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        Connection con=null;
        try{
            con= DriverManager.getConnection(url,username,password);

        }catch (SQLException e){
            e.printStackTrace();
        }
        return con;
    }

    public void closeCon(Connection con)throws Exception{
        if(con!=null){
            con.close();
        }
    }

    public static void main(String[] args){
        JDBC jdbc = new JDBC();
        try{
            jdbc.getCon();
            System.out.println("数据库连接成功！");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }
    }
}
