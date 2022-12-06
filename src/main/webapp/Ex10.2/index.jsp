<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
     <meta name="description" content="" />
     <meta name="author" content="" />
        
        <!-- <link rel="icon" type="image/x-icon" href="assets/favicon.ico" /> -->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/css/styles2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex10.2/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="../Header.jsp"></jsp:include>
<h1>CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <%@ taglib uri="/WEB-INF/murach.tld" prefix="mma" %>
    <mma:products>  
    <tr>
        <td>${description}</td>
        <td class="right">${price}</td>
        <td><form action="${pageContext.request.contextPath}/cart_ex10" method="post">
                <input type="hidden" name="productCode" value="${code}">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    </mma:products>
</table>
        
</body>
</html>