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

    <h1>Checkout isn't finished yet</h1>
    <p>Click on the browser's Back button to continue.</p>
</body>
</html>