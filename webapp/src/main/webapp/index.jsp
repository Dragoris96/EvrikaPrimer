<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>

<%! 
String getFormattedDate() 
{ 
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy hh:mm:ss"); 
    return sdf.format(new Date()); 
} 
%>

<%!

String getName() 
{ 
    Map<String, String> env = System.getenv();
    if (env.containsKey("COMPUTERNAME"))
        return env.get("COMPUTERNAME");
    else if (env.containsKey("HOSTNAME"))
        return env.get("HOSTNAME");
    else
        return "Unknown Computer";
} 
%>
<%!
String getMemory1() 
{ 
	return ""+Runtime.getRuntime().freeMemory();
} 
%>
<%!
String getMemory2() 
{ 
	return ""+Runtime.getRuntime().totalMemory();
} 
%>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Добро пожаловать!</title>
  </head>
  <body>
       <h1>Добро пожаловать!</h1>
       <p>Сегодня: <%= getFormattedDate() %></p>
       <p>Название компьютера: <%= getName() %></p>
       <p>Свободная память Java: <%= getMemory1() %> байт</p>
       <p>Всего памяти Java: <%= getMemory2() %> байт</p>
  </body>
</html>