<?php
$display = True;
$display1 = True;
$display2 = True;
$display3 = True;
if (isset($_POST['submit'])){
  if (empty($_POST["stu_fac"])){
   echo "*Level is required<br>";
  }
else{
$display1 = False;
}

  if (empty($_POST["fullname"])){
    echo "*Full Name is required<br>";
  }
else{
$display2 = False;
}

  if (empty($_POST["email"])){
    echo "*Email is required<br>";
  }
else{
$display3 = False;
}

  if (($display1 == False) && ($display2 == False) && ($display3 == False)){
$display = False;
}
}
if ($display){
?>
<html>
<head>
<title>Library Registration</title>
</head>
<body bgcolor="#66d9ff">
<img src = "library.jpg" alt = "Library" style="width:500px;height:200px;">
<h1>Welcome to the Library Registration Window. Please fill out the form to get started:</h1> 
<form action= Library.php method=POST>
<font color = "red">* Required </font><br>
<br>
<input type=radio name=stu_fac value=Student>Student
<input type=radio name=stu_fac value=Faculty>Faculty  <font color = "red">*</font><br>
<font color = "green">Students can withdraw 5 books maximum for up to one week each. Faculty members can withdraw 10 books for up to two weeks each.</font><br>
<br>
Full Name: <input type="text" name="fullname"> <font color = "red">*</font><br>
<br>
E-mail: <input type="email" name="email"> <font color = "red">*</font><br>
<br>
<input type="submit" name="submit">
</form>
</body>
</html>
<?php
}
else {
header("Location: Library_Form.php");
}
?>