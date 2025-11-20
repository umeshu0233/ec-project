<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, ec.model.Product" %>
<html>
<head><title>カート</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>カート</h2>
<%
    List<Product> cart = (List<Product>) session.getAttribute("cart");
    if (cart == null || cart.isEmpty()) { 
%>
<p>カートは空です</p> 
<%
    } else {
        double total = 0;
%>
<table border="1">
<tr><th>ID</th><th>商品名</th><th>価格</th></tr>
<%
        for (Product p : cart) {
            total += p.getPrice();
%>
<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getName() %></td>
    <td><%= p.getPrice() %>円</td>
</tr>
<%
        } // ← for の閉じカッコ
%>
</table>
<p>合計金額: <%= total %> 円</p>

<form action="order" method="post">
    <input type="submit" value="注文する">
</form>
<%
    } // ← if の閉じカッコ
%>
</body>
</html>