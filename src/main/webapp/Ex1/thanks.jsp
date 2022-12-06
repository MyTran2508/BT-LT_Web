<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   	<link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered: </p>
	<label>Email: </label>
	<span>${user.email}</span> <br>
	<label>FirstName: </label>
	<span>${user.firstName}</span> <br>
	<label>LastName: </label>
	<span>${user.lastName}</span> <br>
	<p> To enter email list now </p>
	<form action="Ex1/index.jsp" method="get">
	        <input type="hidden" name="action" value="join">
	        <input type="submit" value="Return">
    </form>
</body>
</html>