<%@ page import ="java.sql.*" %>
<%
    String symbol = request.getParameter("symbol");    
    String sentiment = request.getParameter("sentiment");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://stocktwits.c0nhenmgg8th.us-west-2.rds.amazonaws.com:3306/",
            "cmpe295b", "cmpe295b");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select symbol,sentiment from messages.sentiment where symbol='" + symbol + "' ");
    
%>