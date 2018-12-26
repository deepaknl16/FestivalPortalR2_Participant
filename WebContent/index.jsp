<%@ include file="/include.jsp"%>

<html>
<head>
<title>Welcome to Festival Event Registration System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" ></meta>
<link rel="StyleSheet" href="css/struts2.css" type="text/css" ></link>


<script type="text/javascript">
	function validateForm() {
		var uname = document.forms["logForm"]["USERNAME"].value;
		var password = document.forms["logForm"]["PASSWORD"].value;
		if (uname == null || uname == "") {
			alert("Please provide Username");
			return false;
		}
		if (password == null || password == "") {
			alert("Please provide Password");
			return false;
		}
	}
</script>
</head>
<style>
.error {
	color: red;
	font-size: 13px;
	font-weight: bold;
}
</style>

<body>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<%
		HttpSession session = request.getSession();
		session.invalidate();
	%>
	<form method="post" name="logForm" action="searchVisitor.htm" onsubmit="return validateForm()">
		<table width="80%" align="center" border="1" bordercolor="#339999">
			<tr>
				<td align="Center">
					<div id="header">
						&nbsp;
						<div align="center">Festival Event Registration System</div>
					</div> <!-- header end --> <br />
					<table>
						<tr>
							<!--content begin -->
							<td colspan="2" align="center">
								<div id="content">
									<h3>Portal Login Page</h3>
								</div>
							</td>
						</tr>
						<tr>
							<td>Visitor Name22222</td>
							<td><input type="text" name="USERNAME" width="500" height="500"></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="password" name="PASSWORD"></td>
						</tr>
						<tr>
    
      			<td width="100" valign="top">Reasons for Applying:</td>
     			 <td><textarea cols="40" rows="10"></textarea>
    			</tr>				
    
    	
						<tr>
							<td colspan="2" align="right"><input type='submit'
								value=" Login "></input> <br /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><span class="error">${ERROR}</span></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td>
								<div id="content">New Visitor:</div>
								<div id="content">
									<a href="/FestivalPortalR2_Participant/registration.jsp">Register
										here</a>
								</div>
							</td>
						</tr>
					</table> <br />
				</td>
			</tr>
		</table>

	</form>

</body>

</html>