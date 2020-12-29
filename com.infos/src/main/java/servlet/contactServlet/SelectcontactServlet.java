package servlet.contactServlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ContactBean;
import dao.ContactDao;

@WebServlet("/SelectcontactServlet")
public class SelectcontactServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectcontactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            System.out.println("111111");
            ContactDao db=new ContactDao();
            ResultSet rs=db.selectcontact();
            HttpSession session=request.getSession();
            ArrayList al=new ArrayList();
            while(rs.next()){
                ContactBean st=new ContactBean();
                st.setContactName(rs.getString("clientName"));
                st.setContactName(rs.getString("contactName"));
                st.setStaffName(rs.getString("staffName"));
                st.setContactContents(rs.getString("contactContents"));
                al.add(st);
            }
            session.setAttribute("al", al);
            rs.close();
            response.sendRedirect("contact/contactSelect.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
