<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HOME PAGE - NHÓM 10</title>
        
        <!-- <link rel="icon" type="image/x-icon" href="assets/favicon.ico" /> -->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/styles2.css" rel="stylesheet" />
        <link rel="stylesheet" href="../style.css" type="text/css"/>
</head>
<body>

	<jsp:include page="../Header.jsp"></jsp:include>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name</p>
    <form action="../ex1_emailList" method="post">
        <input type="hidden" name="action" value="add">
        <label>Email: </label>
        <input type="email" name="email" required> <br>
        <label>FirstName: </label>
        <input type="text" name="firstName" required> <br>
        <label>LastName: </label>
        <input type="text" name="lastName" required> <br>	
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" id="submit">
    </form>
    
    
</body>
</html>