<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String op=request.getParameter("op");
String np=request.getParameter("np");
String rnp=request.getParameter("rnp");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:ac");
PreparedStatement ps=con.prepareStatement("select pass from st_reg where pass=?");
ps.setString(1, op);
ResultSet rs= ps.executeQuery();
if(rs.next()){
    PreparedStatement pss=con.prepareStatement("update st_reg set pass=? where pass=?");
    pss.setString(1, np);
    pss.setString(2, op);
    int i=pss.executeUpdate();
    if(i>0){
        out.print("Successfully update password");
        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
        rd.include(request, response);
                   }
}else{
    System.out.println("sorry this op is not match");
}
%>