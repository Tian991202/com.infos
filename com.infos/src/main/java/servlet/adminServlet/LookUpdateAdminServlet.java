package servlet.adminServlet;

import bean.Admin;
import bean.Staff;

import dao.AdminDao;
import dao.StaffDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/LookUpdateAdminServlet")
public class LookUpdateAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public  LookUpdateAdminServlet (){
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            AdminDao sb=new AdminDao();
//            String staffName=req.getParameter("staffName");
            ResultSet rs=sb.selectUpdateAdmin();
            HttpSession session=req.getSession();
            ArrayList al=new ArrayList();


            while(rs.next()){
                Admin st=new Admin();
                st.setAdminId(rs.getString("adminId"));
                st.setAdminName(rs.getString("adminName"));
                st.setAdminPassword(rs.getString("adminPassword"));
                al.add(st);
            }

            session.setAttribute("al",al);
            rs.close();
            resp.sendRedirect("admin/adminUpdate.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
