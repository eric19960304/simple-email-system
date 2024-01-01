<?php
	$conn=mysqli_connect('localhost','root','7557') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'school') or die ('Failed to Access DB'.mysqli_error($conn));

	$value = $_GET['newBox'];
	foreach ($_GET['itemID'] as $id){
		if($value=="none"){
			$query = "DELETE FROM emails WHERE emailID=".$id;
		}else{
			$query = "update emails set mailbox= '$value' where emailID=".$id;
		}
		mysqli_query($conn, $query) or die ('Query Error! '.mysqli_error($conn));
	}

	

?>

