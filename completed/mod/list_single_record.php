<?php
if(isset($s)) {
	$sql = "SELECT * FROM survey
			WHERE id = '{$s}'";
	$row = fetchOne($sql);
	
	if(!empty($row)) {
	
		// get all interests
		$int = array();
		
		$sql = "SELECT interest FROM survey_interests
				WHERE survey = '{$s}'";
		$interests = fetchAll($sql);
		
		if(!empty($interests)) {
			foreach($interests as $item) {
				$int[] = getInterest($item['interest']);
			}
		}
		
		$content .= "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"tbl_repeat\">";
		
		// full name
		$content .= "<tr>";
		$content .= "<th class=\"col_30\">Full name:</th>";
		$content .= "<td>";
		$content .= $row['first_name']." ".$row['last_name'];
		$content .= "</td>";
		$content .= "</tr>";
		// age
		$content .= "<tr>";
		$content .= "<th>Age:</th>";
		$content .= "<td>";
		$content .= $row['age'];
		$content .= "</td>";
		$content .= "</tr>";
		// gender
		$content .= "<tr>";
		$content .= "<th>Gender:</th>";
		$content .= "<td>";
		$content .= $row['gender'] = "m" ? "Male" : "Female";
		$content .= "</td>";
		$content .= "</tr>";
		// country
		$content .= "<tr>";
		$content .= "<th>Country:</th>";
		$content .= "<td>";
		$content .= getCountry($row['country']);
		$content .= "</td>";
		$content .= "</tr>";
		// interests
		if(!empty($interests)) {
			$content .= "<tr>";
			$content .= "<th>Interests:</th>";
			$content .= "<td>";
			$content .= implode(", ",$int);
			$content .= "</td>";
			$content .= "</tr>";
		}
		// colour
		$content .= "<tr>";
		$content .= "<th>Favorite colour:</th>";
		$content .= "<td>";
		$content .= getColour($row['colour']);
		$content .= "</td>";
		$content .= "</tr>";
		// search engine
		$content .= "<tr>";
		$content .= "<th>Favorite search engine:</th>";
		$content .= "<td>";
		$content .= getSearchEngine($row['search_engine']);
		$content .= "</td>";
		$content .= "</tr>";
		
		$content .= "</table>";
	} else {
		$content = getMod(5);
	}
			
}
echo $content;