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
        <link href="../css/styles2.css" rel="stylesheet" />
        <link rel="stylesheet" href="../survey.css">
    </head>
    <body>
    	<jsp:include page="../Header.jsp"></jsp:include>
        <form action="../Surveyservlet" method="post">
            <h1>Survey</h1>
            <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
            
            <h2>Your information:</h2>
            <label class="pad_top">First Name</label>
            <input type="text" name="firstName" required><br>
            <label class="pad_top">Last Name</label>
            <input type="text" name="lastName" required><br>
            <label class="pad_top">Email</label>
            <input type="email" name="email" required><br>

            <h2>How did you hear about us?</h2>
            <p><input type=radio name="heardFrom" value="Search Engine">Search engine
               <input type=radio name="heardFrom" value="Friend">Word of mouth
               <input type=radio name="heardFrom" value="Other">Other</p>

            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <p><input type="checkbox" name="wantsUpdates" checked>YES, I'd like that.</p>

            <p>Please contact me by:
                <select name="contactVia">
                    <option value="Both" selected>Email or postal mail</option>
                    <option value="Email">Email only</option>
                    <option value="Postal Mail">Postal mail only</option>
                </select>
            </p>

            <input type="submit" value="Submit">
        </form>
    </body>
</html>