<%-- 
    Document   : usercon
    Created on : Nov 3, 2022, 6:13:12 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String s1=request.getParameter("name");
String s2=request.getParameter("userpwd");
String s3=request.getParameter("email");
String s4=request.getParameter("number");
String s5=request.getParameter("gnd");
String s6=request.getParameter("dob");
String s7=request.getParameter("state");
String s8=request.getParameter("country");

%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
        PreparedStatement ps=con.prepareStatement("insert into owner values(?,?,?,?,?,?,?,?)");
        ps.setString(1, s1);
        ps.setString(2, s2);
        ps.setString(3, s3);
        ps.setString(4, s4);
        ps.setString(5, s5);
        ps.setString(6, s6);
        ps.setString(7, s7);
        ps.setString(8, s8);
        ps.executeUpdate();
        response.sendRedirect("owner.html");
        
      
    }catch(Exception e)
       {
   
    e.printStackTrace();
       }
%>