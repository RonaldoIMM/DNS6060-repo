<?php
session_start();
echo 'studentid: ' . $_SESSION["studentid"] . "<br>";
?>

<html>
<head>
<title>Course Registration</title>
</head>

<body>
<h1 align=center>COURSE REGISTRATION PAGE</h1>
<form method=get action=student-roster.php>
<?php 
$username = "root"; 
$password = "toor"; 
$database = "wilmu_dsn_collegedb"; 
$mysqli = new mysqli("localhost", $username, $password, $database); 
$query = "select ci.course_id, c.course_name, i.last_name, i.first_name 
from course_instructor ci join course c on ci.course_id=c.course_id join instructor i on ci.instructor_id=i.instructor_id";
 
$iCourse=0;
echo '<table border="1" cellspacing="2" cellpadding="2" align=center> 
      <tr> 
          <th> <font face="Arial">Course id</font> </th> 
          <th> <font face="Arial">Course Name</font> </th> 
          <th> <font face="Arial">Instructor</font> </th> 
		  <th> <font face="Arial">Add Course</font> </th>
      </tr>';
 
if ($result = $mysqli->query($query)) {	
    while ($row = $result->fetch_assoc()) {
        $strCourseID = $row["course_id"];
        $field2name = $row["course_name"];
        $field3name = $row["last_name"] . ', ' . $row["first_name"];
		$iCourse=$iCourse + 1;
 
        echo '<tr> 
                  <td>'.$strCourseID.'</td> 
                  <td>'.$field2name.'</td> 
                  <td>'.$field3name.'</td> 
				  <td style="text-align: center;"><input type=checkbox name=c' . $iCourse . ' value=' . $strCourseID . '></td>
              </tr>';
    }
    $result->free();
}
echo '</table>';
?>

<p style='text-align: center;'>
	<input type=submit value=Submit>
	<input type=reset>
</p>

</form>
</body>
</html>