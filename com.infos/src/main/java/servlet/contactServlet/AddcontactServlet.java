package servlet.contactServlet;

import dao.ContactDao;
import bean.ContactBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddcontactServlet")
public class AddcontactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddcontactServlet() {
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        String clientName=request.getParameter("clientName");
        String contactName=request.getParameter("contactName");
        String staffName=request.getParameter("staffName");
        String contactContents=request.getParameter("contactContents");
        ContactDao db=new ContactDao();
        if(db.addcontact(clientName,contactName,staffName,contactContents)){
            try {
                response.sendRedirect("contact/success.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else{
            try {
                response.sendRedirect("contact/fail.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}

