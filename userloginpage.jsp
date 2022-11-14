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
    String s=request.getParameter("email");
    String s1=request.getParameter("userpwd");
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from reg where email='"+s+"' and userpwd='"+s1+"'");
        if(rs.next())
                       {
            response.sendRedirect("uhome.jsp");
        }else
                       {
       response.sendRedirect("user.html");
        }
       
    }catch(Exception e)
       {
   
    e.printStackTrace();
       }
%>