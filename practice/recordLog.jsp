<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.io.*" %>


<%
  StringBuilder builder = new StringBuilder();
  Calendar cal = Calendar.getInstance();
  Date current = cal.getTime();
  SimpleDateFormat dformat = new SimpleDateFormat("yyyyMM");
  String path = dformat.format(current) + ".log";
  OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(application.getRealPath(path),true),"UTF-8");
  BufferedWriter buf = new BufferedWriter(writer, 10);
  SimpleDateFormat tformat = new SimpleDateFormat("H:m:s");
  builder.append(tformat.format(current));
  builder.append("\t");
  builder.append(request.getServletPath()); 
  builder.append("\t");
  builder.append(request.getHeader("host"));
  builder.append("\t");
  builder.append(request.getHeader("referer"));
  builder.append("\t");
  builder.append(request.getHeader("user-agent"));
  builder.append("\t");
  buf.write(builder.toString());
  buf.newLine();
  buf.close();
  %>
</table>

</body>
</html>
