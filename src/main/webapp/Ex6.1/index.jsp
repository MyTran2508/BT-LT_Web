
<jsp:include page="../Header.jsp"></jsp:include>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and
   email address below.</p>
<head>
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
</head>
<%@ include file="/includes/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<form action="${pageContext.request.contextPath}/ex6_emailList" method="post">
    <input type="hidden" name="action" value="add">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left">
</form>

<%@ include file="/includes/footer.jsp" %>