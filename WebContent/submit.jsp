<%@page import="java.sql.*,java.util.*"%>

<%
String uname=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String cpassword=request.getParameter("confirm-password");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://stocktwits.c0nhenmgg8th.us-west-2.rds.amazonaws.com:3306/", "cmpe295b", "cmpe295b");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into messages.registration(username,email,password,confirmpassword) values('"+uname+"','"+email+"','"+password+"','"+cpassword+"')");
        System.out.println("Data is successfully inserted!");
        
        
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }      
%>
<jsp:forward page="login.jsp"/>