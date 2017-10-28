<?php
if(isset($s)) {
	
	$content  = "<h1>Submission details</h1>";
	$content .= getMod(9);

} else {
	$sql = "SELECT * FROM survey
			ORDER BY date_submitted DESC";
	$rows = fetchAll($sql);
	
	
	if(!empty($rows)) {
		$content .= "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"tbl_repeat\">";
		$content .= "<tr>";
		$content .= "<th>Full name</th>";
		$content .= "<th class=\"ta_r\">Date submitted</th>";
		$content .= "<th class=\"col_10 ta_r\">View</th>";
		$content .= "</tr>";
		foreach($rows as $row) {
			$content .= "<tr>";
			$content .= "<td>".$row['first_name']." ".$row['last_name']."</td>";
			$content .= "<td class=\"ta_r\">".date("d-m-Y H:i:s",strtotime($row['date_submitted']))."</td>";
			$content .= "<td class=\"ta_r\"><a href=\"?p={$p}&s=".$row['id']."\">View</a></td>";
			$content .= "</tr>";
		}
		$content .= "</table>";
	} else {
		$content .= "<p>There are currently no submissions available.</p>";
	}
}
require_once("_tmp_header.php");
echo $content;
require_once("_tmp_footer.php");
