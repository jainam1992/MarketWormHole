<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://stocktwits.c0nhenmgg8th.us-west-2.rds.amazonaws.com:3306/",
            "cmpe295b", "cmpe295b");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from messages.registration where username='" + username + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp?username="+username);        
    } else {
    	response.sendRedirect("login.jsp");
    }
%>