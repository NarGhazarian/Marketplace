<%@ page import="Products.ProductsDAO" %>
<%@ page import="Products.Products" %>
<%@ page import="java.util.List" %><%--
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<%
    int i = Integer.parseInt(request.getParameter("editId"));
    ProductsDAO productsDAO = new ProductsDAO();
    productsDAO.fillProducts();
    List<Products> allProducts = productsDAO.getAllProducts();
%>

<div class="d-flex justify-content-center">
    <form action="edit.jsp">
        <br>
        <div class="input-group mb-3">
            <input type="text" name="id" value="<%=allProducts.get(i).getId()%>" readonly>
        </div>
        <br>

        <div class="input-group mb-3">
            <input type="text" name="name" value="<%=allProducts.get(i).getProductName()%>">
        </div>
        <br>

        <div class="input-group mb-3">
            <input type="text" name="price" value="<%=allProducts.get(i).getProductPrice()%>">
        </div>
        <br>



        <div class="d-flex justify-content-center">
            <input type="submit" class="btn btn-info" role="button">
        </div>
    </form>
</div>

</body>
</html>
