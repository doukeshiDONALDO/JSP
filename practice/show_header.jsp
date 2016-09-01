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
  <table border="0">
  <%
  Enumeration hdr = request.getHeaderNames();
  while(hdr.hasMoreElements()){
    String strNam = (String)hdr.nextElement();
  %>
  <tr>
  <th><%=strNam %></th>
  <td><%=request.getHeader(strNam) %></td>
  </tr>
<% } %>

  </table>
</body>
</html>
