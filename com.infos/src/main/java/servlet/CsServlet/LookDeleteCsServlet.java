package servlet.CsServlet;



import bean.CsBean;
import dao.CsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/LookDeleteCsServlet")
public class LookDeleteCsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LookDeleteCsServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            CsDao sb=new CsDao();
            ResultSet rs=sb.lookDeletecs();
            HttpSession session=req.getSession();
            ArrayList al=new ArrayList();
            while (rs.next()){
                CsBean st=new CsBean();
                st.setClientName(rs.getString("clientName"));
                al.add(st);
            }
            session.setAttribute("al",al);
            rs.close();
            resp.sendRedirect("cs/csDelete.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
