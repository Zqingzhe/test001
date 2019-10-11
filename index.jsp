<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
</head>
<body>
<%!
   String shop[]={"JSP开发实例","JBuilder案例编程","人月神话","软件工程师","计算机微机原理","数据库概述","Java程序设计"};
   String uname,pwd;
%>

<%
	session.putValue("user",null);
	uname=request.getParameter("uname");
	pwd=request.getParameter("pwd");
	if(uname==null||pwd==null){
%>
		<jsp:forward page="login.jsp" />
	<%}
%>

<%
  for(int i=0;i<shop.length;i++){%>
    <a href="shopcart.jsp?sno=<%=shop[i]%>">
       <%=shop[i]%>
    </a>
	<br>
<%}%>
</body>
</html>