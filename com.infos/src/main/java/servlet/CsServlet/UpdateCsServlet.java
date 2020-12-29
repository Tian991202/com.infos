package servlet.CsServlet;


import dao.CsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateCsServlet")
public class UpdateCsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public UpdateCsServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String clientName=req.getParameter("clientName");
        String clientOpinion=req.getParameter("clientOpinion");
        String staffName=req.getParameter("staffName");


        CsDao sb=new CsDao();
        if(sb.updateCs(clientName,clientOpinion,staffName)){
            resp.sendRedirect("cs/success.jsp");
        }else {
            resp.sendRedirect("cs/fail.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
