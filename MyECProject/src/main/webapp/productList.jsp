<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, ec.model.Product"%>
<html>
<head>
    <title>商品一覧</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>商品一覧</h2>

    <div class="product-grid">
        <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        for (Product p : products) {
        %>
        <div class="product-card">
            <!-- 画像がある場合は getImagePath()、ない場合は固定画像 -->
            <img src="<%= (p.getImagePath() != null && !p.getImagePath().isEmpty()) ? p.getImagePath() :
            	"images/sample.jpg" %>" alt="商品画像">
            <h3><%=p.getName()%></h3>
            <p>ID: <%=p.getId()%></p>
            <p class="price">¥<%=p.getPrice()%></p>
            <form action="cart" method="post">
                <input type="hidden" name="id" value="<%=p.getId()%>">
                <button class="add-to-cart">カートに追加</button>
            </form>
        </div>
        <% } %>
    </div>

    <div style="text-align:center; margin-top:20px;">
        <a href="cart.jsp">🛒 カートを見る</a>
    </div>
</body>
</html>