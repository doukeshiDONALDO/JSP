<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
  String[] name  = {"user","pass"};
  Cookie[] cookies = new Cookie[2];

  if(request.getParameter("rec") != null){
    for(int i = 0; i < name.length; i++ ){
      cookies[i] = new Cookie(name[i],request.getParameter(name[i]));
      cookies[i].setMaxAge(60 * 60 * 24 * 180);
      cookies[i].setVersion(1);
      response.addCookie(cookies[i]);
    }
    out.println("cookie Infomation record");
  }
  else{
   for(int i = 0; i < name.length; i++ ){
      cookies[i] = new Cookie(name[i],"");
      cookies[i].setMaxAge(0);
      response.addCookie(cookies[i]);
    }
    out.println("cookie Infomation erase"); 
}
  %>

