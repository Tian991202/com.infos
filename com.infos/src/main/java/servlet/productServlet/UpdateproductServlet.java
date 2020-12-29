package servlet.productServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ProductDao;

@WebServlet("/UpdateproductServlet")
public class UpdateproductServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateproductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName=request.getParameter("productName");
        String productModel=request.getParameter("productModel");
        String productNumber=request.getParameter("productNumber");
        String productPrice=request.getParameter("productPrice");
        ProductDao db=new ProductDao();
        if(db.updateproduct(productName,productModel,productNumber,productPrice)){
            response.sendRedirect("product/success.jsp");
        }else{
            response.sendRedirect("product/fail.jsp");
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
