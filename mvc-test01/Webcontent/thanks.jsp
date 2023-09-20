
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java and JSP</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
</head>
<body>
	<h1>Thanks for joining our email list</h1>
	<p>Here is the information that you entered:</p>
	<label> Email:</label>
	<span> ${user.email} </span>
	<br>
	<label>First Name:</label>
	<span> ${user.firstName}</span>
	<br>
	<label> Last Name:</label>
	<span> ${user.lastName}</span>
	<br>
	<label> Date:</label>
	<span> ${user.date}</span>
	<br>
	<p>To enter another email address, button in your browser or the
		Return button shown below.</p>
	click on the Back

	<form action="index.jsp" method="get">
		<input type="hidden" name="action" value="join"> <input
			type="submit" value="Return">
	</form>
</body>
</html>