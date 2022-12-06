package murach.controllers;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.ArrayList;

import murach.data.ProductIO;
import murach.business.Product;

@WebServlet("/loadProducts_ex10")
public class ProductsServlet_Ex10 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);
        String url = "/Ex10.2/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}