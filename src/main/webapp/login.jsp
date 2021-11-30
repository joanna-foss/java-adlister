<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
  if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")){
    response.sendRedirect("/profile.jsp");
  } else {
    response.sendRedirect("/login.jsp");
  }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <%@ include file="partials/head.jsp" %>
</head>
<body>
<h1>Login Here</h1>
<form method="POST" action="result.jsp">
  <div class="form-group">
    <label for="username">Username</label>
    <input class="form-control" id="username" placeholder="Enter username here.">
  </div>
  <div class="form-group">
    <label for="emailaddress">Email address</label>
    <input type="email" class="form-control" id="emailaddress" aria-describedby="emailHelp"
           placeholder="Enter email here.">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email.</small>
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Enter password here.">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%@ include file="partials/scripts.jsp" %>
</body>
</html>