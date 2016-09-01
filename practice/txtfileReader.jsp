<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>access counter by session</title>
</head>
<body>
  <table>
    <tr><th>No.</th><th>1</th><th>2</th><th>3</th><th>4</th></tr>

<%
  InputStreamReader reader = new InputStreamReader(new FileInputStream(application.getRealPath("data.txt")),"UTF-8");
  BufferedReader buf = new BufferedReader(reader);
  while(buf.ready()){
    String line = buf.readLine();
    out.println("<tr>");
    StringTokenizer token = new StringTokenizer(line, "\t");
    while(token.hasMoreTokens()){
      out.println("<td>"+ token.nextToken() + "</td>");
    }
    out.println("</tr>");
} 
buf.close();
  %>
</table>

</body>
</html>
