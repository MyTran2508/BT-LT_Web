<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex13.2/main.css" type="text/css"/>
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
	
    <h1>Update User</h1>
    <p>NOTE: You can't update the email address.</p>
    <form action="${pageContext.request.contextPath}/userAdmin_ex13" method="post">
        <input type="hidden" name="action" value="update_user">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               disabled><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" 
               required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  
               required><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Update" class="margin_left">
    </form>
</body>
</html>