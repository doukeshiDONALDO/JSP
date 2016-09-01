<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
  String[] name  = {"user","pass"};
  String[] value  = {"",""};
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for(int i = 0; i < name.length; i++ ){
      for(Cookie cook : cookies){
        if(cook.getName().equals(name[i])){
          value[i] = cook.getValue();
          break;
        }
      }
    }
  }
  %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>use cookie</title>
</head>
<body>

<form action="use_cookie_2.jsp" method="post" >
<div>
<label>user:<br>
<input type="text" name="user" value="<%=value[0] %>">
</label>
</div>
<div>
<label>password:<br>
<input type="text" name="pass" value="<%=value[1] %>">
</label>
</div>
<label>
<input type="checkbox" name="rec" value="true" checked >
Information Memory
</label>
</div>
<div>
<input type="submit" value="send">
</div>
</form>
  
</body>
</html>
