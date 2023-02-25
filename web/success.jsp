<%-- 
    Document   : success
    Created on : 24-Feb-2023, 2:24:30 pm
    Author     : RITWIK SHAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
 String name=(String)request.getParameter("name");
 String email=(String)request.getParameter("email");
  %>

<%=name %>

<%=email %>