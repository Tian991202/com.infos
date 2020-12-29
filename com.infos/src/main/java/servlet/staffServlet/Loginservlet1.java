package servlet.staffServlet;


import bean.Admin;
import dao.StaffDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Loginservlet1")
public class Loginservlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public  Loginservlet1() {

    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminName = req.getParameter("adminName");
        String adminPassword = req.getParameter("adminPassword");

        StaffDao sb = new StaffDao();
        ResultSet rs=sb.LoginAdmin(adminName,adminPassword);
        HttpSession session=req.getSession();
        try {
            rs.next();
            if(rs.getRow()>0){
                Admin admin=new Admin();
                admin.setAdminName(rs.getString("adminName"));
                admin.setAdminPassword(rs.getString("adminPassword"));
                session.setAttribute("admin",admin);
                rs.close();
                resp.sendRedirect("main.jsp");
            }else{
                resp.sendRedirect("login.jsp");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

