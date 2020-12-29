package servlet.clientServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClientDao;


@WebServlet("/UpdateClientServlet")
public class UpdateClientServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public UpdateClientServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String clientName=req.getParameter("clientName");
        String clientTelephone=req.getParameter("clientTelephone");
        String clientAddress=req.getParameter("clientAddress");
        String clientEmail=req.getParameter("clientEmail");

        ClientDao cb=new ClientDao();
        if(cb.updateClient(clientName,clientTelephone,clientAddress,clientEmail)){
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
