
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/signup.css"/>
    </head>
    <body>
        <div class="container" style="">
            <h1>Sign Up Now!!!</h1>
            <form method="POST" action="processing.jsp?action=register">
                <div>
                    <input type="text" name="fname" placeholder="First Name"/>  
                </div>
                <div>
                    <input type="text" name="lname" placeholder="Last Name"/>  
                </div>
                <div>
                    <input type="email" name="email" placeholder="Email: example@gmail.com"/>  
                </div>
                <div>
                    <input type="password" name="pword" placeholder="Password..."/>  
                </div>
                 <div>
                    <input type="password" name="pword2" placeholder="Confirm password..."/>  
                </div>
                <div class="btn_container">
                    
                        <button type="submit">Register</button> 
                     <a href="login.jsp">Have Account?</a>
                    
                    
                </div>
            </form>
        </div>
        
    </body>
</html>
