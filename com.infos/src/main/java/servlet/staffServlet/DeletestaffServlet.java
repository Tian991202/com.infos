package servlet.staffServlet;
import dao.StaffDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeletestaffServlet")
public class DeletestaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
public  DeletestaffServlet () {
}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StaffDao sb=new StaffDao();
        String staffName=req.getParameter("staffName");
        if(sb.deleteStaff(staffName)){
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
