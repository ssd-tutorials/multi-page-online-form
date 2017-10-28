<?php
if(!isset($_SESSION)) {
	session_start();
}

require_once("dbase.php");
require_once("config.php");

// converts url request into variables
$p = "index";
if(isset($_GET)) {
	foreach($_GET as $key => $value) {
		if(!empty($value)) {
			${$key} = trim($value);
		}
	}
}

// prepares for sql interaction
function sql_escape($value) {  
	if (PHP_VERSION < 6) {
	  $value = get_magic_quotes_gpc() ? stripslashes($value) : trim($value);
	}  
	if (function_exists("mysql_real_escape_string")) {
		$value = mysql_real_escape_string($value);
	} else {
		$value = mysql_escape_string($value);
	}
	return $value;
}

// populate array of records from the database
// takes sql statement as parameter
function fetchAll($sql) {
	global $conndb;
	mysql_select_db(DB_NAME, $conndb);
	$rs = mysql_query($sql, $conndb) or die("Database query error.</br />".mysql_error());
	while($rows = mysql_fetch_assoc($rs)) {
		$out[] = $rows;
	}
	mysql_free_result($rs);
	return !empty($out) ? $out : null;
}

// populates single record
// takes sql statement as parameter
function fetchOne($sql) {
	global $conndb;
	mysql_select_db(DB_NAME, $conndb);
	$rs = mysql_query($sql, $conndb) or die("Database query error.</br />".mysql_error());
	$total = mysql_num_rows($rs);
	if($total > 0) {
		$out = mysql_fetch_assoc($rs);
	}
	mysql_free_result($rs);
	return !empty($out) ? $out : null;
}

// executes sql statement
function executeSql($sql) {
	global $conndb;
	mysql_select_db(DB_NAME, $conndb);
	$res = mysql_query($sql, $conndb) or die("Database query error.</br />".mysql_error());
	return !$res ? false : true;
}

// push content into layout
function pushLayout($cont) {
	require_once("_tmp_header.php");
	echo $cont;
	require_once("_tmp_footer.php");
}

// renders page
function render() {
	global $p;
	global $s;
	$row = fetchPage($p);
	if(!empty($row)) {
		$content = $row['content'];
		$module = fetchModuleId($row['id']);		
		if(!empty($module)) {
			echo getMod($module,$content);
		} else {
			pushLayout($content);
		}
	} else {		
		echo getMod(5);
	}
}

// output buffer the content of the module
function getMod($id,$content=null) {
	global $p;
	global $s;
	global $required;
	$module = fetchModuleFile($id);
	$module_path = MOD_DIR.DS.$module;	
	if(is_file($module_path)) {	
		ob_start();	
		require_once($module_path);	
		return ob_get_clean();	
	}	
}

// get page record
function fetchPage($identity) {
	$sql  = "SELECT * FROM pages
			WHERE identity = '";
	$sql .= sql_escape($identity);
	$sql .= "' LIMIT 1";
	$row = fetchOne($sql);
	return !empty($row) ? $row : null;
}

// get module id if page has module assigned
function fetchModuleId($page) {
	$sql  = "SELECT module FROM pages_modules
			WHERE page = ";	
	$sql .= sql_escape($page);
	$sql .= " LIMIT 1";
	$row = fetchOne($sql);
	return isset($row) ? $row['module'] : null;
}

// gets module file name
function fetchModuleFile($id) {
	if(!empty($id)) {
		$sql  = "SELECT file FROM modules
				WHERE id = ";
		$sql .= sql_escape($id);
		$sql .= " LIMIT 1";
		$row = fetchOne($sql);
	}
	return isset($row) ? $row['file'] : null;
}

// get validation message
function isValid($key,$array=null) {
	if(!empty($array)) {
		return array_key_exists($key,$array) ? "<span class=\"warn\">".$array[$key]."</span>" : null;
	} else {
		return null;
	}	
}

// get age dropdown menu
function getAge($label,$limit=150) {
	$out  = "<select name=\"{$label}\" id=\"{$label}\" class=\"sel\">";
	for($i=0; $i <= $limit; $i++) {
		$out .= "<option value=\"{$i}\"";
		$out .= stickyDropdown($label,$i);;
		$out .= ">{$i}</option>";
	}
	$out .= "</select>";
	return $out;
}

// get country dropdown menu
function getCountries($label) {
	$sql = "SELECT * FROM countries
			ORDER BY name";
	$rows = fetchAll($sql);
	if(!empty($rows)) {
		$out  = "<select name=\"{$label}\" id=\"{$label}\" class=\"sel\">";
			$out .= "<option value=\"\">Select one&hellip;</option>";
		foreach($rows as $row) {
			$out .= "<option value=\"".$row['id']."\"";
			$out .= stickyDropdown($label,$row['id']);
			$out .= ">".$row['name']."</option>";
		}
		$out .= "</select>";
	}
	return isset($out) ? $out : null;
}

// get country by id
function getCountry($id) {
	$sql = "SELECT * FROM countries
			WHERE id = '{$id}'";
	$row = fetchOne($sql);
	return !empty($row) ? $row['name'] : null;
}

// get list of interests
function getInterests($label) {
	$sql = "SELECT * FROM interests
			ORDER BY name";
	$rows = fetchAll($sql);
	if(!empty($rows)) {
		$out = "<ul class=\"ul_check\">";
		foreach($rows as $row) {
			$out .= "<li><label for=\"{$label}#".$row['id']."\" class=\"radio\">";
			$out .= "<input type=\"checkbox\" name=\"{$label}#".$row['id']."\" id=\"{$label}#".$row['id']."\" value=\"".$row['id']."\"";
			$out .= stickyCheck("{$label}#".$row['id'],$row['id']);
			$out .= " /><span>".$row['name']."</span></label></li>";
		}
		$out .= "</ul>";
	}
	return isset($out) ? $out : null;
}

// get interest name
function getInterest($id) {
	$sql = "SELECT * FROM interests
			WHERE id = '{$id}'";
	$row = fetchOne($sql);
	return !empty($row) ? $row['name'] : null;
}

// get list of colours
function getColours($label) {
	$sql = "SELECT * FROM colours
			ORDER BY name";
	$rows = fetchAll($sql);
	if(!empty($rows)) {
		$out = "<ul class=\"ul_check\">";
		foreach($rows as $row) {
			$out .= "<li><label for=\"{$label}#".$row['id']."\" class=\"radio\">";
			$out .= "<input type=\"radio\" name=\"{$label}\" id=\"{$label}#".$row['id']."\" value=\"".$row['id']."\"";
			$out .= stickyRadio($label,$row['id']);
			$out .= " /><span>".$row['name']."</span></label></li>";
		}
		$out .= "</ul>";
	}
	return isset($out) ? $out : null;
}

// get colour
function getColour($id) {
	$sql = "SELECT * FROM colours
			WHERE id = '{$id}'";
	$row = fetchOne($sql);
	return !empty($row) ? $row['name'] : null;
}

// get list of colours
function getSearchEngines($label) {
	$sql = "SELECT * FROM search_engines
			ORDER BY name";
	$rows = fetchAll($sql);
	if(!empty($rows)) {
		$out = "<ul class=\"ul_check\">";
		foreach($rows as $row) {
			$out .= "<li><label for=\"{$label}#".$row['id']."\" class=\"radio\">";
			$out .= "<input type=\"radio\" name=\"{$label}\" id=\"{$label}#".$row['id']."\" value=\"".$row['id']."\"";
			$out .= stickyRadio($label,$row['id']);
			$out .= " /><span>".$row['name']."</span></label></li>";
		}
		$out .= "</ul>";
	}
	return isset($out) ? $out : null;
}

// get list of colours
function getSearchEngine($id) {
	$sql = "SELECT * FROM search_engines
			WHERE id = '{$id}'";
	$row = fetchOne($sql);
	return !empty($row) ? $row['name'] : null;
}

// redirect
function redirect($url=null) {
	if($url != null) {
		header("Location: {$url}");
		exit;
	}
}

// collect posts and convert to sessions
// parameter array only if there are any
// multiple selects
function post2session($multi=null) {
	
	// array to indicate what elements
	// of the current form are multiselect
	$parts = array($multi);
	// array to collect all multi-selected items
	$out = array();
	
	// loop through all submitted posts
	// and create session variables of single items
	// and add to $out array for multiple selects with #
	foreach($_POST as $key => $value) {
		$value = is_array($value) ? $value : trim($value);
		$par = explode("#",$key);		
		if(in_array($par[0],$parts)) {
			$out[$key] = $value;
		} else {
			$_SESSION[$key] = $value;
		}
	}
	
	// if there are multi selections checked/selected
	if(!empty($out)) {
		// remove all existing sessions for that $par
		foreach($_SESSION as $key => $value) {
			$par = explode("#",$key);
			if(in_array($par[0],$parts) && !array_key_exists($key,$out)) {
				unset($_SESSION[$key]);
			}
		}
		// create new sessions for that $par
		foreach($out as $key => $value) {
			$_SESSION[$key] = $value;
		}
	// otherwise remove all entries
	} else {
		// remove all sessions for that $par
		foreach($_SESSION as $key => $value) {
			$par = explode("#",$key);
			if(in_array($par[0],$parts)) {
				unset($_SESSION[$key]);
			}
		}
	}
	
}

// STICKY FORM FIELDS
// sticky text field
function stickyText($par) {
	if(isset($_POST[$par])) {
		return $_POST[$par];
	} elseif (isset($_SESSION[$par])) {
		return $_SESSION[$par];
	}
}

// sticky dropdown menu
function stickyDropdown($par,$value) {
	if(isset($_POST[$par]) && $_POST[$par] == $value) {
		return " selected=\"selected\"";
	} elseif (isset($_SESSION[$par]) && $_SESSION[$par] == $value) {
		return " selected=\"selected\"";
	}
}

// sticky checkbox
function stickyCheck($par,$value,$def=null) {
	if ($_POST) {
		if (isset($_POST[$par]) && $_POST[$par] == $value) {
			return  " checked=\"checked\"";
		}
	} else {
		if (isset($_SESSION[$par])) {
			return " checked=\"checked\"";
		} elseif ($value == $def) {
			return " checked=\"checked\"";
		}
	}
}

// sticky radio buttons
function stickyRadio($par,$value,$def=null) {
	if (isset($_POST[$par]) && $_POST[$par] == $value) {
		return " checked=\"checked\"";
	} elseif (isset($_SESSION[$par]) && $_SESSION[$par] == $value) {
		return " checked=\"checked\"";
	} elseif ($value == $def) {
		return " checked=\"checked\"";
	}
}

// print all sessions
function printSessions() {
	if(isset($_SESSION)) {
		foreach($_SESSION as $key => $value) {
			echo "Key: {$key} / Value: {$value}<br />";
		}
	}
}