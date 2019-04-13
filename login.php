<?php
session_start();
if (!isset($_GET["userid"])) session_unset();
else
{
	echo 'userid: ' . $_GET["userid"] . "<br>";
	$_SESSION["studentid"] = $_GET["userid"];
	echo 'studentid: ' . $_SESSION["studentid"] . "<br>";
	header("Location: http://localhost/projects/registration.php");
}

//if (isset($_GET['userid'])) echo "userid: " . $_GET['userid'] . "<br>";
//if (isset($_GET['userid'])) {$_SESSION['studentid'] = $_GET['userid'];}
//if (isset($_SESSION['studentid'])) echo 'session: ' . $_SESSION['studentid'] . "<br>";
	//header('Location: http://localhost/projects/registration.php');


#else if (isset($_GET['userid'])) {$_SESSION['studentid'] = $_GET['userid'];}
?>

<html>
<head>
<title>Student Login</title>
</head>

<body>
<h1 align=center>STUDENT LOGIN</h1>
<form method=get action=#>
	<p style='text-align: center;'>
	Username: <input type=text name=userid><br><br>
	Password: <input type=password name=pw><br><br>
	<input type=submit value=Submit>
	<input type=reset>
	</p>
</form>
</body>
</html>