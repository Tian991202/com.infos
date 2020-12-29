package servlet.CsServlet;

import bean.ClientBean;
import bean.CsBean;
import dao.ClientDao;
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

@WebServlet("/SelectCsServlet")
public class SelectCsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public SelectCsServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
            CsDao sb=new CsDao();
            ResultSet rs=sb.selectCs();
            HttpSession session=req.getSession();
            ArrayList al=new ArrayList();


            while (rs.next()){
                CsBean st=new CsBean();
                st.setClientName(rs.getString("clientName"));
                st.setClientOpinion(rs.getString("clientOpinion"));
                st.setStaffName(rs.getString("staffName"));
                al.add(st);
            }

            session.setAttribute("al",al);
            rs.close();
            resp.sendRedirect("cs/csSelect.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
