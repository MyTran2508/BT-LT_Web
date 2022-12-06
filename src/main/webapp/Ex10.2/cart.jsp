<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex10.2/main.css" type="text/css"/>
</head>
<body>

	<script type="text/javascript">
		function Redirect() {
        	window.location="${pageContext.request.contextPath}/index.html";
		}
    </script>
	<form>
        <input type="button" value="BACK" onclick="Redirect();"/>
    </form>

<h1>Your cart</h1>

<table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
  </tr>

<%@ taglib uri="/WEB-INF/murach.tld" prefix="mma" %>
<mma:cart>
  <tr>
    <td>${quantity}</td>
    <td>${productDescription}</td>
    <td>${productPrice}</td>
    <td>${total}</td>
  </tr>
</mma:cart>

</table>
 
<form action="" method="post" class="pad_top">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Continue Shopping">
</form>

<form action="" method="post">
  <input type="hidden" name="action" value="checkout">
  <input type="submit" value="Checkout">
</form>

</body>
</html>