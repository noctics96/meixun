<?php
	require "conn.php";
	$tel=@$_POST['tel'];
	$query="select * from user1 where tel='$tel'";
	$result=mysql_query($query);
	
	if(mysql_fetch_array($result)){
		echo true;
	}else{
		echo false;
	}
	if(isset($_POST['submit'])){
		$tel=$_POST['tel'];
		$password=$_POST['password'];
		mysql_query("insert user1 values(null,'$tel','$password')");
		header('location:../login.html');
	}

?>