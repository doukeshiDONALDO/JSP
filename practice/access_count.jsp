<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
  boolean flag = false;
  int count = 1;
  Cookie cook = null;
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for(Cookie current : cookies){
      if(current.getName().equals("cnt") == true){//オブジェクトを比較する場合はequalsメソッド
        count = Integer.parseInt(current.getValue()) + 1;
        cook = new Cookie("cnt",(new Integer(count)).toString());
        cook.setMaxAge(60 * 60 * 24 * 180);
        response.addCookie(cook);
        flag = true;
        break;
      }
    }
  }
  if(!flag){
    cook = new Cookie("cnt","1");
    cook.setMaxAge(60 * 60 * 24 * 180);
    response.addCookie(cook);
  }
  %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>access counter</title>
</head>
<body>
  Counter <%=count %>
  
</body>
</html>
