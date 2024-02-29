<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>View Users</title>
</head>
<body>

<%@page import="Controller.UserDao,bean.*,java.util.*"%>
<%@ page import="Service.User_Service" %>
<%@ page import="Service_IMPLIMANTATION.User_IMP" %>
<%@ page import="Controller.HibernateUtil" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<h1>Users List</h1>

<%
  User_Service userService;
  userService = new User_IMP(HibernateUtil.getSessionFactory());

  List<User> list=userService.Alldata();
%>

<table border="1" width="90%">
  <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
    <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<%--  <c:forEach items="${list}" var="u">--%>
  <% for(User u :list){ %>
    <tr><td><%=u.getId()%></td><td><%=u.getName()%></td><td><%=u.getPassword()%></td>
      <td><%=u.getEmail()%></td><td><%=u.getSex()%></td><td><%=u.getCountry()%></td>
      <td><a href="editform.jsp?id=<%=u.getId()%>">Edit</a></td>
      <td><a href="deleteuser.jsp?id=<%=u.getId()%>">Delete</a></td></tr>
<%--  </c:forEach>--%>
  <%
    }
  %>
</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>