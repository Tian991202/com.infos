package servlet.staffServlet;

import dao.StaffDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdataStaffServlet")
public class UpdataStaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
public UpdataStaffServlet (){
}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String staffName=req.getParameter("staffName");
        String staffSex=req.getParameter("staffSex");
        String staffAge=req.getParameter("staffAge");
        String staffDuty=req.getParameter("staffDuty");
        String staffWage=req.getParameter("staffWage");


        StaffDao sb=new StaffDao();
        if(sb.updateStaff(staffName,staffSex,staffAge,staffDuty,staffWage)){
            resp.sendRedirect("staff/success.jsp");
        }else {
            resp.sendRedirect("fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

