<html>
<head>
<link href="/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="css/adminLogin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript">
	javascript: window.history.forward(1);
</script>
<script language="javascript">
	function check() {
		var txtAD;
		var tx;
		var txt;
		txtAD = document.getElementById('t1');
		tx = document.getElementById('t2');

		if (txtAD.value == '') //if(name.value=='')
		{
			alert("Enter the User Name");
			return false;
		}
		if (tx.value == '') //if(name.value=='')
		{
			alert("Enter the Password");
			return false;
		}
	}
</script>

<script>
	function fi() {
		parent.location = 'index.jsp'
	}
</script>
<title>adminlogin</title>
</head>
<body bgcolor="#666" class="container">
	<div id="loginHeading">
		<h1>Admin Login</h1>
	</div>

	<div id="adminLoginDiv">



		<form id="form1" name="f1" action="adm_log_in" method="POST">

			<%
				HttpSession ad = request.getSession();
				String ee = (String) ad.getAttribute("er_ps");
				if (ee == null) {
					ee = "";
				}
			%>

			<table>
				<tr>
					<td><label>User Name</label></td>
					<td><input type="text" name="t1" class="ipt" id="t1"
						placeholder="Enter user name" /></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" name="t2" class="ipt" id="t2"
						placeholder="Password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="btn" type="submit" value="Submit" name="b1"
						onclick="return check()" style="font-weight: 700" /> <input
						class="btn" type="reset" width="40" value="Cancle" name="b2"
						onclick="fi()" style="font-weight: 700" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>