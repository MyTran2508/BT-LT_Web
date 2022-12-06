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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex7.2/style2.css" type="text/css"/>
</head>
<body>
<jsp:include page="../Header.jsp"></jsp:include>
<h1>List of albums</h1>
<p>User Email: ${cookie.userEmail.value}</p>

<p>
<a href="${pageContext.request.contextPath}/down_load?action=checkUser&amp;productCode=8601">
    86 (the band) - True Life Songs and Pictures
</a><br>

<a href="${pageContext.request.contextPath}/down_load?action=checkUser&amp;productCode=pf01">
    Paddlefoot - The First CD
</a><br>

<a href="${pageContext.request.contextPath}/down_load?action=checkUser&amp;productCode=pf02">
    Paddlefoot - The Second CD
</a><br>

<a href="${pageContext.request.contextPath}/down_load?action=checkUser&amp;productCode=jr01">
    Joe Rut - Genuine Wood Grained Finish
</a>
</p>

</body>
</html>