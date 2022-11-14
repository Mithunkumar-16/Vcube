<%-- 
    Document   : userloginpage
    Created on : Nov 5, 2022, 2:51:39 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String s=request.getParameter("uname");
    String s1=request.getParameter("pwd");
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into tpa values('"+s+"','"+s1+"')");
        if(s.equals("tpa") && s1.equals("tpa"))
                       {
        response.sendRedirect("tpaloginpage.jsp");
        }else
                       {
        response.sendRedirect("tpalogin.jsp");
        }
       
    }catch(Exception e)
       {
   
    e.printStackTrace();
       }
%>