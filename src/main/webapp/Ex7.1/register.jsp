<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex7.1/style2.css" type="text/css"/>
</head>
<body>

<h1>Download registration</h1>

<p>To register for our downloads, enter your name and email
   address below. Then, click on the Submit button.</p>

<form action="${pageContext.request.contextPath}/download" method="post">
    <input type="hidden" name="action" value="registerUser">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" required><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" required><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" required><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin_left">
</form>

</body>

</html>