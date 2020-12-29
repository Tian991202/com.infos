package servlet.staffServlet;

import bean.Staff;
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

@WebServlet("/LookDeleteStaffServlet")
public class LookDeleteStaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
public LookDeleteStaffServlet() {
}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            StaffDao sb=new StaffDao();
            ResultSet rs=sb.lookDeleteStaff();
            HttpSession session=req.getSession();
            ArrayList al=new ArrayList();
            while (rs.next()){
                Staff st=new Staff();
                st.setStaffName(rs.getString("staffName"));
                al.add(st);
            }
            session.setAttribute("al",al);
            rs.close();
            resp.sendRedirect("staff/staffDelete.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}