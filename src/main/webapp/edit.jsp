<%@ page import="Products.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Narek
  Date: 07.04.2022
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ProductsDAO productsDAO = new ProductsDAO();
    productsDAO.fillProducts();
    try {
        productsDAO.updateProducts(Integer.parseInt(request.getParameter("id")),
                request.getParameter("name"), Integer.parseInt(request.getParameter("price")),
                request.getParameter("image"));} catch (SQLException e) {
        e.printStackTrace();
    }
    response.sendRedirect("products.jsp");
%>

</body>
</html>
