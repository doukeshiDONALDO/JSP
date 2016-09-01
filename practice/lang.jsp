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
  String lang = request.getHeader("accept-language");
  if(lang.indexOf("ja") != -1){
  out.println("こんにちは");
  }
  else{
    out.println("hello");
  }

  %>
  
</body>
</html>
