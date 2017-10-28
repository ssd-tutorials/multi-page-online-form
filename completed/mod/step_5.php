<?php
if(!isset($_SESSION['step'][4])) {
	redirect("?p=submission_form&s=search_engine");
} else {
	unset($_SESSION['step']);
	
	// expected fields
	$expected = array(
		'first_name',
		'last_name',
		'age',
		'gender',
		'country',
		'interest',
		'colour',
		'search_engine'
	);
	
	// sql fields
	$in_fields = array();
	$in_values = array();
	
	// multi selection fields
	$multi = array('interests');
	
	foreach($_SESSION as $key => $value) {
		if(!empty($value)) {
			$value = sql_escape($value);
			$key = explode("#",$key);
			if(in_array($key[0],$multi)) {
				${$key[0]}[] = $value;
			} else {
				$in_fields[] = "`{$key[0]}`";
				$in_values[] = "'{$value}'";
			}
		}
	}
	
	if(!empty($in_fields)) {
	
		$sql  = "INSERT INTO survey(";
		$sql .= implode(", ",$in_fields);
		$sql .= ") VALUES (";
		$sql .= implode(", ",$in_values);
		$sql .= ")";
		
		if(executeSql($sql)) {
			$id = mysql_insert_id();
			// add interests
			if(!empty($interests)) {
				foreach($interests as $key => $value) {				
					$sql = "INSERT INTO survey_interests(`survey`,`interest`)
							VALUES ('{$id}','{$value}')";
					executeSql($sql);
				}
			}
		}
	}
	
	// after insert to database
	session_destroy();
}

require_once("_tmp_header.php");
?>
<h1>Thank you</h1>
<p>Thank you for participating in our survey.<br />
<a href="?p=index">Go back to our home page</a>.</p>
<?php require_once("_tmp_footer.php"); ?>