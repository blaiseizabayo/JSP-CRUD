<%@page import="Controller.UserDao"%>
<%@ page import="Service.User_Service" %>
<%@ page import="Service_IMPLIMANTATION.User_IMP" %>
<%@ page import="Controller.HibernateUtil" %>
<%@ page import="bean.User" %>
<jsp:useBean id="u" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

  User_Service userService;
  userService = new User_IMP(HibernateUtil.getSessionFactory());

  User  user_data=userService.Register_User(u);
  if(user_data!=null){
    response.sendRedirect("adduser-success.jsp");
  }else{
    response.sendRedirect("adduser-error.jsp");
  }
%>