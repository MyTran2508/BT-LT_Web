<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Ex12.1/main.css" type="text/css"/>
</head>
<body>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sqlStatement == null}">
    <c:set var="sqlStatement" value="select * from User" />
</c:if>

	<script type="text/javascript">
		function Redirect() {
        	window.location="${pageContext.request.contextPath}/index.html";
		}
    </script>
	<form>
        <input type="button" value="BACK" onclick="Redirect();"/>
    </form>
    
<h1>The SQL Gateway</h1>
<p>Enter an SQL statement and click the Execute button.</p>

<p><b>SQL statement:</b></p>
<form action="${pageContext.request.contextPath}/sqlGateway_ex12" method="post">
    <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
    <input type="submit" value="Execute">
</form>

<p><b>SQL result:</b></p>
${sqlResult}

</body>
</html>