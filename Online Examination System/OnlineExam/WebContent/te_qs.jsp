<%@ page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
        <script>
            function check()
            {
                var txtAD;
                var tx;
                var txt;
                txtAD = document.getElementById('t1');
                tx = document.getElementById('t2');
                txt = document.getElementById('t3');
                var q= document.getElementById('t4');
                var w= document.getElementById('t5');
                var e= document.getElementById('t6');
                if (txtAD.value == '') //if(name.value=='')
                    {
                        alert("Enter the Questions");
                        return false;
                    }
                    if (tx.value == '') //if(name.value=='')
                        {
                            alert("Enter the Choice 1");
                            return false;
                        }
                        if (txt.value == '') //if(name.value=='')
                            {
                                alert("Enter the Choice 2");
                                return false;
                            }
                            
                            if (q.value == '') //if(name.value=='')
                                {
                                    alert("Enter the Choice 3");
                                    return false;
                                }
                                if (w.value == '') //if(name.value=='')
                                    {
                                        alert("Enter the Choice 4");
                                        return false;
                                    }
                                    if (e.value == '') //if(name.value=='')
                                        {
                                            alert("Enter the Answer");
                                            return false;
                                        }
                                        if (e.value != 'a'|e.value != 'b'|e.value != 'c'|e.value != 'd') //if(name.value=='')
                                        {
                                            alert("Enter the Answer in a,b,c or d");
                                            return false;
                                        }
                                    }
        </script>
        <script>
            function fi()
            {
                parent.location='te_hm.jsp'
            }
        </script>  
    </head>
    <body>
        <%
            HttpSession se = request.getSession();
            String c=(String)se.getAttribute("cn");
            String c1=(String)se.getAttribute("us");
   
        %>
        
        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <form id="form1" name="f1" action="te_qs_in" method="POST">
            <p align="center"><font size="6" color="#800080">Enter The Question</font></p>
			<p>
            <%
            int j[]=new int[100];
            try
           {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
                Statement stat = conn.createStatement();
                String g = "select count(q_id) from ques_in where c_name='"+c+"' ";
                ResultSet rs = stat.executeQuery(g);
                while (rs.next())
                    {
                   j[0]=rs.getInt(1);
                   System.out.println("total no of question in database");
    System.out.println("count");
    System.out.println(j[0]);
                    }  
            }
            catch (Exception ae)
                    {
                ae.printStackTrace();
                 System.out.println("excccc");
                    }

            %><b>Course name<label><%= c %></label>
            <br>
            <br>    
            
            <label>Question No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label></b>
			<input name="t0" value="<%= j[0] + 1  %>" readonly="readonly" style="font-weight: 700" /><b>
            <br>
            <br>
            <label>Question&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
			</b><input name="t1" id="t1" style="font-weight: 700" /><b>
            <br>
            <br>
            <label>Choice 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label>
			</b><input name="t2" id="t2" style="font-weight: 700" /><b>
            <br>
            <br>
            <label>Choice 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
			</b><input name="t3" id="t3" style="font-weight: 700" /><b>
            <br>
            &nbsp;
            <br>
            <label>Choice 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </label>
			</b><input name="t4" id="t4" style="font-weight: 700" /><b>
            <br>
            <br>
            <label>Choice 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
			</b><input name="t5" id="t5" style="font-weight: 700" /><b>
            <br>
            <br>
            <label>Answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
			</b><input name="t6" id="t6" style="font-weight: 700" /><b>
            <br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </b>
            <input type="submit" value="Submit" onclick="return check()" style="font-weight: 700" /><b>
			</b></p>
        </form>
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <input type="submit" value="Cancel" onclick="fi()" style="font-weight: 700" /><b>
		</b>
        
    </body>
</html>
