<%-- 
    Document   : usercon
    Created on : Nov 3, 2022, 6:13:12 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("email");
String s4=request.getParameter("number");
String s5=request.getParameter("gnd");
String s6=request.getParameter("adr");
String s7=request.getParameter("dob");
String s8=request.getParameter("uname");
String s9=request.getParameter("userpwd");
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
        PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1, s1);
        ps.setString(2, s2);
        ps.setString(3, s3);
        ps.setString(4, s4);
        ps.setString(5, s5);
        ps.setString(6, s6);
        ps.setString(7, s7);
        ps.setString(8, s8);
        ps.setString(9, s9);
        ps.executeUpdate();
        response.sendRedirect("user.html");
        
      
    }catch(Exception e)
       {
   
    e.printStackTrace();
       }
%>