package servlet.productServlet;


import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ProductBean;
import dao.ProductDao;

@WebServlet("/lookDelectproductServlet")
public class lookDelectproductServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public lookDelectproductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            HttpSession session=request.getSession();
            String NO= (String) session.getAttribute("productName");
            ProductDao db=new ProductDao();
            ResultSet rs=db.lookDelectproduct();
            //HttpSession session=request.getSession();
            ArrayList al=new ArrayList();
            while(rs.next()){
                ProductBean st=new ProductBean();
                st.setProductName(rs.getString("productName"));
                al.add(st);
            }
            session.setAttribute("al", al);
            rs.close();
            response.sendRedirect("product/productDelete.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }




    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
