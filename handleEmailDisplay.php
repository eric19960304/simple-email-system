<?php
	$conn=mysqli_connect('localhost','root','7557') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'school') or die ('Failed to Access DB'.mysqli_error($conn));
	$start=($_GET[pageNumber]-1)*10;
	
	$query = 'SELECT * FROM emails WHERE mailbox=\''.$_GET['mailboxtype'].
		'\' ORDER BY emailId DESC'.
		' LIMIT '.$start.',10';
	
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	
	
	$json = array();
	while($row=mysqli_fetch_array($result)) {
		$json[]= array( 'emailID'=>$row['emailID'], 
						'sender'=>$row['sender'],
						'title'=>$row['title'],
						'date'=>$row['date'] );
		
	}
	
	print json_encode($json);

	
	
?>

