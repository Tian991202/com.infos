package servlet.CsServlet;

import dao.CsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteCsServlet")
public class DeleteCsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public DeleteCsServlet(){
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CsDao sb=new CsDao();
        String NO=req.getParameter("NO");
        if(sb.deleteCs(NO)){
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
