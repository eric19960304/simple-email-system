<?php

	

	$conn=mysqli_connect('localhost','root','7557') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'school') or die ('Failed to Access DB'.mysqli_error($conn));
	
	$query = 'SELECT * FROM emails WHERE emailID='.$_GET['itemID'];
	
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	
	
	$row=mysqli_fetch_array($result);
	
	
	
	print json_encode(array( 'sender'=>$row['sender'],
							'title'=>$row['title'],
							'date'=>$row['date'],
							'content'=>$row['content']));
	
	
?>

