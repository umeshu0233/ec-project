<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, ec.model.Product"%>
<html>
<head>
<title>注文確認</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h2>注文確認</h2>
	<%
	List<Product> cart = (List<Product>) request.getAttribute("cart");
	if (cart == null || cart.isEmpty()) {
	%>
	<p>カートは空です</p>
	<a href="products">商品一覧へ戻る</a>
	<%
	} else {
	%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>商品名</th>
			<th>価格</th>
		</tr>
		<%
		double total = 0;
		for (Product p : cart) {
			total += p.getPrice();
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getPrice()%>円</td>
		</tr>
		<%
		}
		%>
	</table>
	<p>
		合計金額:
		<%=total%>
		円
	</p>

	<form action="orderComplete.jsp" method="post">
		<input type="submit" value="注文を確定する">
	</form>
	<%
	}
	%>
</body>
</html>