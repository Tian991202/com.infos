package servlet.CsServlet;

import dao.CsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddCsServlet")
public class AddCsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public AddCsServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String clientName=req.getParameter("clientName");
        String clientOpinion=req.getParameter("clientOpinion");
        String staffName=req.getParameter("staffName");

        CsDao sb=new CsDao();
        if(sb.addCs(clientName,clientOpinion,staffName)){
            resp.sendRedirect("cs/fail.jsp");
        }else {
            resp.sendRedirect("cs/success.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
