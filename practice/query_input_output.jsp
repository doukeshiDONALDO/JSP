<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>query</title>
</head>
<body>
  <table border="0">
  <%
  Enumeration params = request.getParameterNames();
  while(params.hasMoreElements()){
    String name = (String)(params.nextElement());
    out.println("<tr><th>"+ name + "</th>");
    out.println("<td>"+ request.getParameter(name) + "</td></tr>");
  }
  %>
  </table>
</body>
</html>
