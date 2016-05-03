<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("username")!=null){
        response.sendRedirect("widgets.jsp");  
      
    } else {
    	response.sendRedirect("login.jsp");
        
    }

%>