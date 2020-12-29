package servlet.clientServlet;

import bean.ClientBean;
import dao.ClientDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/LookDeleteServlet")
public class LookDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LookDeleteServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            ClientDao cb=new ClientDao();
            ResultSet rs=cb.lookDeleteClient();
            HttpSession session=req.getSession();
            ArrayList al=new ArrayList();
            while (rs.next()){
                ClientBean st=new ClientBean();
                st.setClientName(rs.getString("clientName"));
                al.add(st);
                session.setAttribute("al",al);
            }

            rs.close();
            resp.sendRedirect("client/clientDelete.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
