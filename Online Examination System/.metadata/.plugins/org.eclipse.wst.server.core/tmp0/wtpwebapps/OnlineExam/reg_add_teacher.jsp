
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<center><h1>NEW STUDENT INFORMATION</h1>
        </center>
        <form name="new_teacher" action="add_teacher" method="post">
            <br><br>
            Teacher ID : <input type="text" name="tea_id" />
            <br><br>
            Name : <input type="text" name="name" />
            <br><br>
            Date of Birth: <input type="text" name="dob" />
            <br><br>
            Father's Nmae : <input type="text" name="fath_name" />
            <br><br>
            Present Address : <input type="text" name="pres_add" />
            <br><br>
            Permanent Address : <input type="text" name="perm_add" />
            <br><br>
            Phone No. :
            <br>
            Residence : <input type="text" name="ph_res" />
            <br><br>
            Mobile : <input type="text" name="ph_cell" />
            <br><br>
            Date of Joining : <input type="text" name="dt_of_join" />
            <br><br>
            Subject : <input type="text" name="sub" />
            <br><br>
            Classes : <input type="text" name="class" />
            <br><br>
            Salary : <input type="text" name="Salary" />
            <br><br>
            <input type="submit" value="submit" />
             </form>
            </body>
</html>
