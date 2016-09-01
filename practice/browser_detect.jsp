<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>header </title>
</head>
<body>
  <%
  String agent = request.getHeader("user-agent");
  if(agent.indexOf("Firefox") != -1){
  out.println("use Firefox");
  }
  else if(agent.indexOf("Chrome") != -1){
  out.println("use Chrome");
  }
/*
  else if(agent.indexOf("IE") != -1){
  out.println("use IE");
  }
*/
  else{
    out.println("what browser?");
  }

  %>
  
</body>
</html>
