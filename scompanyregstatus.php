

<!DOCTYPE html>
<html>

<head>
	<title>Register for companies </title>

				<style>
			@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
			body {
			
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #000;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
}

		</style>

<?php

	session_start();
	require_once("includes/connection.php");
	require_once("includes/functions.php");
	require_once("navbar.html");
// Query the database for the username and password
	global $connection;

	$uid = $_SESSION["uid"];
	$query = "SELECT * FROM studentdetails where uid = $uid";
	$result = mysqli_query($connection,$query);
	$db_field = mysqli_fetch_array($result,MYSQLI_ASSOC);
	$_SESSION["usn"] = $db_field["usn"];
	$usn = $_SESSION["usn"];
	$query = "SELECT * FROM registered where usn='$usn'";
	$result = mysqli_query($connection,$query);
	
$rows="";
	while ($db_field = mysqli_fetch_array($result,MYSQLI_ASSOC))
	{
	
	$q2 = "SELECT * FROM companydetails where code='".$db_field['code']."'";
	$r2 = mysqli_query($connection,$q2);
$db_field2 = mysqli_fetch_array($r2,MYSQLI_ASSOC);
		$rows.= "<tr>";
		$rows.="
			<td>".$db_field2['code']."</td>
			<td>".$db_field2["visitdate"]."</td>
	</tr>";


	}



?>

<body>
<div class="container">

	<div class="jumbotron">
<h1>Registration History</h1>
<h2><i>USN (<?php echo $usn ?>)</i></h2>
<?php

if ($rows == "")
{

	echo "<h3> No company found. </h3></div>
 ";

}

else
echo '
</div>
<br>
<table class="table table-striped" border = "border" cellpadding="6">
	<tr>
			<th>Company Name</th>
			<th>Visit Date/Interview Date</th>
	</tr>
	'.$rows.'
</table>
';
?>
</div>
</body>
</html>
