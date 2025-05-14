

<%@page import="org.mindrot.bcrypt.BCrypt"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%

String where = request.getParameter("action");




if(where.equals("register")){
   String ffname = request.getParameter("fname");
   String llname = request.getParameter("lname");
   String eemail = request.getParameter("email");
   String ppass = request.getParameter("pword");  
     String salt = BCrypt.gensalt();
     String hpass =    BCrypt.hashpw(ppass, salt);
  
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forumdb", "root","");
            PreparedStatement st = con.prepareStatement("INSERT INTO users(fname,lname,email,passw) VALUES(?,?,?,?)");
            
            st.setString(1, ffname);
            st.setString(2, llname);
            st.setString(3, eemail);
            st.setString(4, hpass);
            
            if(st.executeUpdate() > 0){
               response.sendRedirect("login.jsp");
            }
            
    } catch (SQLException e) {
           out.print(e.getMessage());
        }
    
}
else if(where.equals("login")){


   String eemail = request.getParameter("email");
   String ppass = request.getParameter("pword");
    ResultSet result = null;
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forumdb", "root","");
            PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE email = ? AND passw = ?");
            
            st.setString(1, eemail);
            st.setString(2, ppass);
            
            result = st.executeQuery();
//            System.out.println(result.getString("passw"));
//          // System.out.println(BCrypt.checkpw(ppass, result.getString("passw")));
//        out.println(result.getString("passw"));
           if(BCrypt.checkpw(ppass, result.getString("passw"))){
              response.sendRedirect("dashboard.jsp");
           }
            else{
              response.sendRedirect("login.jsp");
            }
            
    } catch (SQLException e) {
           out.print(e.getMessage());
//       e.printStackTrace();
//System.out.println(BCrypt.checkpw(ppass, result.getString("passw")));
        }
}

else if(where.equals("verify")){


   String eemail = request.getParameter("email");
   
    ResultSet result = null;
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forumdb", "root","");
            PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE email = ?");
            
            st.setString(1, eemail);            
            result = st.executeQuery();
//         
           if(result.next()){
               session.setAttribute("email", eemail);
              response.sendRedirect("forgot.jsp");
           }
            else{
              response.sendRedirect("index.jsp");
            }
            
    } catch (SQLException e) {
           out.print(e.getMessage());
//       e.printStackTrace();
//System.out.println(BCrypt.checkpw(ppass, result.getString("passw")));
        }
}
else{
  response.sendRedirect("login.jsp");
}
%>