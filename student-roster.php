<?php
session_start();
echo 'studentid: ' . $_SESSION["studentid"] . "<br>";
?>

<html>
<head>
<title>Student Roster</title>
</head>

<body>
<h1 align=center>STUDENT ROSTER</h1>
<form method=get action=#>
<?php 
$username = "root"; 
$password = "toor"; 
$database = "wilmu_dsn_collegedb"; 
$mysqli = new mysqli("localhost", $username, $password, $database); 
if ($mysqli->connect_error) {die("Connection failed: " . $mysqli->connect_error);} 

	$strStudentid=$_SESSION['studentid'];
	$iGet=count($_GET);
	echo 'count($_GET): ' . $iGet . "<br>";
	
    $iRow=1;
	while ($iRow <= 9) {
		$id="c" . $iRow;
        if (isset($_GET[$id])) 
		{
			$strSQL="INSERT INTO course_student VALUES ('" . $_GET[$id] . "', '$strStudentid', default)";
			echo "$strSQL <br>";
			if ($mysqli->query($strSQL) === TRUE) {echo "New record created successfully <br>";} 
			else {echo "Error: " . $strSQL . "<br>" . $mysqli->error;}
		}		
		$iRow++;
	}
	
	$iRow=1;
	while ($iRow <= 9) {
		$id="d" . $iRow;
        if (isset($_GET[$id])) 
		{
			$strSQL="delete from course_student where student_id='$strStudentid' and course_id='" . $_GET[$id] . "'";
			echo "$strSQL <br>";
			if ($mysqli->query($strSQL) === TRUE) {echo "Record purged.<br>";} 
			else {echo "Error: " . $strSQL . "<br>" . $mysqli->error;}
		}		
		$iRow++;
	}
	
#$sql = "INSERT INTO course_student VALUES ('CS102', 'W99001001', default)";
#if ($mysqli->query($sql) === TRUE) {echo "New record created successfully";} 
#else {echo "Error: " . $sql . "<br>" . $mysqli->error;}

$query = "select cs.course_id, cs.student_id, cs.last_update, c.course_name, i.last_name, i.first_name 
from course_student cs join course c on cs.course_id=c.course_id join course_instructor ci on cs.course_id=ci.course_id join instructor i on ci.instructor_id=i.instructor_id
where cs.student_id='$strStudentid'
order by cs.course_id, cs.student_id";
echo 'query: ' . "$query<br>";
$iCourse=0; 
echo '<table border="1" cellspacing="2" cellpadding="2" align=center> 
      <tr> 
          <th> <font face="Arial">Course id</font> </th> 
          <th> <font face="Arial">Student id</font> </th> 
          <th> <font face="Arial">Last Update</font> </th> 
		  <th> <font face="Arial">Course Name</font> </th>
		  <th> <font face="Arial">Instructor</font> </th> 
		  <th> <font face="Arial">Delete Course</font> </th> 
      </tr>';
 
if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        $strCourseID = $row["course_id"];
        $field2name = $row["student_id"];
		$field3name = $row["last_update"];
        $field4name = $row["course_name"];
        $field5name = $row["last_name"] . ', ' . $row["first_name"];
		$iCourse=$iCourse + 1;
 
        echo '<tr> 
                  <td>'.$strCourseID.'</td> 
                  <td>'.$field2name.'</td> 
                  <td>'.$field3name.'</td> 
				  <td>'.$field4name.'</td> 
                  <td>'.$field5name.'</td> 
				  <!--td style="text-align: center;"><input type=checkbox></td-->
				  <td style="text-align: center;"><input type=checkbox name=d' . $iCourse . ' value=' . $strCourseID . '></td>
              </tr>';
    }
    $result->free();
}
echo '</table>';
?>

<p style='text-align: center;'>
	<input type=submit value=Submit>
	<input type=reset><br>
	<a href=logout.php>Logout</a>
</p>

</form>
</body>
</html>