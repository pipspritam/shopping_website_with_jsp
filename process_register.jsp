<%@ include file="dbconnect.jsp"%>
<%@ include file="navbar.jsp"%>
<html>
    <body>
        <%
        try
        {
            String newpassword=request.getParameter("newpassword");
            String conformpassword=request.getParameter("conformpassword");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            Statement stmt=con.createStatement();
	        ResultSet rs=stmt.executeQuery("select * from users where email='"+email+"'");
            if(rs.next())
            {
                
                    %><center><h1 style="background-color:Tomato;">Already have an account with this email!!</h1></center><%
                    %> <center><p>Try Again: <a href="register.jsp">Register</a></p></center> <%
            }
            else
            {
                int i=stmt.executeUpdate("insert into users values ('"+name+"','"+email+"','"+phone+"','"+newpassword+"','"+address+"')");
                %><center><h1 style="background-color:rgb(65, 177, 50);"><%=name%>, You are registered successfully</h1></center><%
                %> <center><p>Login here <a href="login.jsp">Login</a></p></center> <%
            }
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
    </body>
</html>