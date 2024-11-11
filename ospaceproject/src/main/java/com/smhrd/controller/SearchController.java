package com.smhrd.controller;

import com.smhrd.model.ProductsDAO;
import com.smhrd.model.Products;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/searchByColor")
public class SearchController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int r = Integer.parseInt(request.getParameter("r"));
        int g = Integer.parseInt(request.getParameter("g"));
        int b = Integer.parseInt(request.getParameter("b"));
        int tolerance = 10;

        ProductsDAO productsDAO = new ProductsDAO();
        List<Products> products = productsDAO.searchProductsByColor(r, g, b, tolerance);

        request.setAttribute("products", products);
        request.getRequestDispatcher("ItemSearchImg.jsp").forward(request, response);
    }
}
