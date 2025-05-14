<%-- 
    Document   : forgot
    Created on : May 13, 2025, 11:40:24 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESET PASSWORD</title>
        <link rel="stylesheet" href="css/signup.css" />
    </head>
    <body>
       <div class="container" style="">
            <h1>Reset Password Now!!!</h1>
            <form  method="POST" action="processing.jsp?action=reset">
              
                <div>
                    <input type="hidden" name="email" value='<%= session.getAttribute("email") %>'/> 
                    <input type="password" name="pword1" placeholder="Password..."/> 
                </div>
                <div>
                    <input type="password" name="pword2" placeholder="Retype Password..."/>  
                </div>
                
                 <div class="btn_container">
                    
                        <button type="submit">Reset</button> 
                      
                    
                    
                </div>
                
            </form>
        </div>
    </body>
</html>
