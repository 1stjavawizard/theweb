<%-- 
    Document   : verify
    Created on : May 13, 2025, 11:28:08 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMAIL VERIFICATION!!!</title>
        <link rel="stylesheet" href="css/signup.css" />
    </head>
    <body>
        <div class="verify">
               <h1>Verification!!!</h1>
            <form  method="POST" action="processing.jsp?action=verify">
              
                <div>
                    <input type="email" name="email" placeholder="Email: example@gmail.com"/>  
                </div>
                
                 <div class="btn_container">
                    
                        <button type="submit">Verify</button> 
                       
                    
                </div>
                
            </form>
        </div>
    </body>
</html>
