<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
  Integer count = (Integer)session.getAttribute("cnt");
  if(count == null){
    session.setAttribute("cnt",1);
    count = 1;
  }
  else{
    count++;
    session.setAttribute("cnt",count);
  }
  %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>access counter by session</title>
</head>
<body>
  Counter <%=count %>
  
</body>
</html>
