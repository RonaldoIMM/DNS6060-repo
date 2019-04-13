<?php
$level = $fullname = $email = "";

	$stu_fac = filter_input(INPUT_POST, 'stu_fac');
	$fullname = filter_input(INPUT_POST, 'fullname');
    $email = filter_input(INPUT_POST, 'email');
?>

<html>
<head>
		<title>Library Form Results</title>
</head>
	<br><br>
	<h3><center>Entered information:</center></h3>
<body bgcolor="#66d9ff">
	<table border=1 align="center">

<?
	
  echo "<tr> <th>Level</th><th>Full Name</th><th>Email</th>";

  echo "<tr><td>" . $level. "</td><td>" . $fullname. "</td><td>" . $email. "</td></tr>";
  echo "</table>";
  echo "<br>";
  
?>
</body>
</html>