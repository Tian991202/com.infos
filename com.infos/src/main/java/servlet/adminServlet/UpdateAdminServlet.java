package servlet.adminServlet;
import dao.AdminDao;
import dao.StaffDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public  UpdateAdminServlet () {
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminDao sb=new AdminDao();
        String adminId=req.getParameter("adminId");
        String adminName=req.getParameter("adminName");
        String adminPassword=req.getParameter("adminPassword");
        if(sb.updateAdmin(adminId,adminName,adminPassword)){
            resp.sendRedirect("staff/success.jsp");
        }else {
            resp.sendRedirect("staff/fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
