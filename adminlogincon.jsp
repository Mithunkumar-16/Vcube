<%-- 
    Document   : logincon
    Created on : Oct 29, 2022, 4:32:33 PM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String user=request.getParameter("Username");
String password=request.getParameter("Userpwd");
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into admin values('"+user+"','"+password+"')");
        if(user.equals("admin") && password.equals("admin"))
                       {
        response.sendRedirect("adminfile.jsp");
        }else
                       {
        response.sendRedirect("adminlogin.html");
        }
        
    }catch(Exception e)
       {
   
    e.printStackTrace();
       }
%>