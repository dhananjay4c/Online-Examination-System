

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String branch=request.getParameter("branch");
        String semester=request.getParameter("sem");
        session.setAttribute("branch", branch);
        session.setAttribute("semester", semester);

        %>
        <script>

    

       function addRow()
 {
     tabBody=document.getElementById("inputtable");
  row=document.createElement("TR");
    cell1 = document.createElement("TD");
    textnode1=document.createElement("input");
    textnode1.name="inputbox[]";
    textnode1.type="text";

    cell1.appendChild(textnode1);
    row.appendChild(cell1);
    tabBody.appendChild(row);

}



        </script>

    </head>
    <body>
        <form name="form1" method="post" action="reg_course_subs">
           <table border="0" width="100%">
              <tbody id="inputtable">
                <tr><td><input type="text" name="inputbox[]" /></td></tr>
                </tbody>
             </table>
             
             <table border="0" width="100%">
              <tr>
             <td><input type="button" value="Add Inputbox" onclick="addRow();" /></td>
           </tr>
           <tr>
               <td><input type="submit" value="submit" /></td>
             </tr>
             </table>
         </form>

    </body>
</html>
