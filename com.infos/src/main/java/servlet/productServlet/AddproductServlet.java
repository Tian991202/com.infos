package servlet.productServlet;

import bean.ProductBean;
import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddproductServlet")
public class AddproductServlet extends HttpServlet{private static final long serialVersionUID = 1L;

    public AddproductServlet() {
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName=request.getParameter("productName");
        String productModel=request.getParameter("productModel");
        String productNumber=request.getParameter("productNumber");
        String productPrice=request.getParameter("productPrice");
        ProductDao c=new ProductDao();
        if(c.addproduct(productName,productModel,productNumber,productPrice)){
            response.sendRedirect("product/success.jsp");
        }else{
            response.sendRedirect("product/fail.jsp");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
