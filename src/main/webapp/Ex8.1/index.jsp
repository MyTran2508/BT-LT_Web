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
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/Ex8.1/style3.css" type="text/css"/>
</head>

<body>
<jsp:include page="../Header.jsp"></jsp:include>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <jsp:useBean id="user" scope="session" class="murach.business.User"/>    
    <form action="${pageContext.request.contextPath}/ex81_emailList" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" required
               value="<jsp:getProperty name="user" property="email"/>"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" required
               value="<jsp:getProperty name="user" property="firstName"/>"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" required
               value="<jsp:getProperty name="user" property="lastName"/>"><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>