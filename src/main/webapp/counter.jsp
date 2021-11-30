<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int visits = 0; %>

<%
    if(visits == 0) {
        request.setAttribute("hasUserVisited", false);
    } else {
        request.setAttribute("hasUserVisited", true);
    }
    visits++;
%>

<%! int counter = 0; int yourNum = 2;%> <%--code inside of bracket and exclamation point is used to instantiate a variable; everything inside of brackets is executed in java--%>

<% counter += 1;
    request.setAttribute("NumberOfVisits", counter);
%> <%--do not instantiate variables using brackets in this way without the exclamation point... this is a bad practice--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%@ include file="partials/nav.jsp" %>

<%
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")){
        counter = 0;
    }
%>

<h1>The current count is ${NumberOfVisits}.</h1> <%----%>

<p>Your number is <%= yourNum %></p>

<p>The current time is <%= java.time.LocalDate.now() %></p>

<p>resetting counter: ${param.reset}</p>

<p>search term: ${param.searchTerm}</p>

View the page source!

<c:choose>
    <c:when test="${hasUserVisited}">
        <h2>Welcome Back.</h2>
    </c:when>
    <c:otherwise>
        <h2>Hello, new user.</h2>
    </c:otherwise>
</c:choose>

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

<%@include file="partials/scripts.jsp" %>

</body>
</html>