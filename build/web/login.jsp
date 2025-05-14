
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
            <form  method="POST" action="processing.jsp?action=login">
              
                <div>
                    <input type="email" name="email" placeholder="Email: example@gmail.com"/>  
                </div>
                <div>
                    <input type="password" name="pword" placeholder="Password..."/>  
                </div>
                
                 <div class="btn_container">
                    
                        <button type="submit">Login</button> 
                        <a href="verify.jsp">Forgot Password?</a>
                       <a href="index.jsp">Have no account?</a>
                    
                    
                </div>
                
            </form>
        </div>
        
    </body>
</html>
