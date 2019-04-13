
<!DOCTYPE HTML>  
<html>
<head>
<title>Simple Student Registration</title>
<style>
.error {color: #FF0000;}
</style>
</head>
<body>  

<?php
// define variables and set to empty values
$nameErr = $Ac_LevelErr = "";
$name  = $Ac_Level  =  $major = $DSN6040 = $DSN6050 = $DSN6060 = "";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed"; 
    }
  }
  

  if (empty($_POST["Ac_Level"])) {
    $Ac_LevelErr = "Academic Level is required";
  } else {
    $Ac_Level = test_input($_POST["Ac_Level"]);
  }
}
$major=filter_input(INPUT_POST, 'major');

$DSN6040=isset($_POST['DSN6040']);
$DSN6050=isset($_POST['DSN6050']);
$DSN6060=isset($_POST['DSN6060']);

/*
if ($DSN6040) { echo "Yes";
} else { echo "No";
}
if ($DSN6050) { echo "Yes";
} else { echo "No";
}
if ($DSN6060) { echo "Yes";
} else { echo "No";
}*/

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2>Student Registrtion Form</h2>
<p><span class="error">* required field</span></p>
<form method="post" action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>>

Name: <input type="text" name="name" value=<?php echo $name;?>>
  <span class="error">* <?php echo $nameErr;?></span>
<br><br>
  
Academic Level:
  <input type="radio" name="Ac_Level" <?php if (isset($Ac_Level) && $Ac_Level=="undergraduate") echo "checked";?> value="undergraduate">Undergraduate
  <input type="radio" name="Ac_Level" <?php if (isset($Ac_Level) && $Ac_Level=="graduate") echo "checked";?> value="graduate">Graduate
  <input type="radio" name="Ac_Level" <?php if (isset($gender) && $Ac_Level=="other") 
  echo "checked";?> value="other">Other  
  <span class="error">* <?php echo $Ac_LevelErr;?></span>
<br><br>

Major:
  <select required name=major>
  <option value="">please select</option>
  <option value="CompSci">Computer Science</option>
  <option value="MIS">Management Information Systems</option>
  <option value="WebDSN">Web Design</option>
</select>
<br><br>

Classes:<br>
	<input type=checkbox name=DSN6040 checked />DSN6040<br>
	<input type=checkbox name=DSN6050 />DSN6050<br>
    <input type=checkbox name=DSN6060 />DSN6060<br>
<br><br>  

  <input type=submit name="submit" value="Submit">  
<br><br>
</form>

<?php
  echo "<table border=1 cellspacing=0 cellpading=0>
  <tr> <th>Student Name</th><th>Academic Level</th><th>Major</th>
  <th>DSN6040</th><th>DSN6050</th><th>DSN6060</th></tr>";

  echo "<tr><td>" . $name. "</td><td>" . $Ac_Level. "</td><td>" . $major. "</td><td>" . $DSN6040. 
  "</td><td>" . $DSN6050. "</td><td>" . $DSN6060. "</td></tr>";
  echo "</table>";
  echo "<br>";

?>

</body>
</html>