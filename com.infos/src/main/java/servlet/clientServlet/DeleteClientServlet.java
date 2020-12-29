package servlet.clientServlet;

import dao.ClientDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteClientServlet")
public class DeleteClientServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public DeleteClientServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClientDao cb=new ClientDao();
        String clientName=req.getParameter("clientName");
        if(cb.deleteClient(clientName)){
            resp.sendRedirect("client/fail.jsp");
        }else {
            resp.sendRedirect("client/success.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
