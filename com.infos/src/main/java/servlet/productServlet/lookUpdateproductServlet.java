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

@WebServlet("/lookUpdateproductServlet")
public class lookUpdateproductServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public lookUpdateproductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            ProductDao db=new ProductDao();
            String productName=request.getParameter("productName");
            ResultSet rs=db.selectUpdateproduct(productName);
            HttpSession session=request.getSession();
            ArrayList al=new ArrayList();
            while(rs.next()){
                ProductBean st=new ProductBean();
                st.setProductName(rs.getString("productName"));
                st.setProductModel(rs.getString("productModel"));
                st.setProductNumber(rs.getString("productNumber"));
                st.setProductPrice(rs.getString("productPrice"));
                al.add(st);
                session.setAttribute("al",al);
            }

            rs.close();
            response.sendRedirect("product/productUpdate.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
