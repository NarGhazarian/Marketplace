<%@ page import="Products.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Narek
  Date: 08.04.2022
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<%
    String deleteId = request.getParameter("deleteId");
    ProductsDAO productsDAO = new ProductsDAO();
    try {
        productsDAO.fillProducts();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    int id = productsDAO.getAllProducts().get(Integer.parseInt(deleteId)).getId();
    out.print(id);
    try {
        productsDAO.deleteProduct(id);
    } catch (SQLException e) {
        e.printStackTrace();
    }
    response.sendRedirect("products.jsp");
%>

</body>
</html>
