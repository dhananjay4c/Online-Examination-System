<%-- 
    Document   : reg_add_stud_infopers
    Created on : 10 Apr, 2010, 2:18:27 PM
    Author     : Arvind
--%>

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
        <form name="stud_pers" action="add_stud_persinfo" method="post">
            <br><br>
            Enrollment Number : <input type="text" name="enrol_no" />
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
            Percentage :
            <br>
            10th : <input type="text" name="percent_10" />
            <br><br>
            12th : <input type="text" name="percent_12" />
            <br><br>
            Date of Admission : <input type="text" name="dt_of_adm" />
            <br><br>
            Batch : <input type="text" name="batch" />
            <br><br>
            Branch : <input type="text" name="branch" />
            <br><br>
            <input type="submit" value="submit" />
        </form>
        
    </body>
</html>
