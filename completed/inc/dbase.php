<?php
defined("DB_HOST")
	|| define("DB_HOST", "localhost");
defined("DB_NAME")
	|| define("DB_NAME", "");
defined("DB_USERNAME")
	|| define("DB_USERNAME", "");
defined("DB_PASSWORD")
	|| define("DB_PASSWORD", "");
	
$conndb = mysql_pconnect(DB_HOST,DB_USERNAME,DB_PASSWORD) or trigger_error("Database connection failed.</br >" . mysql_error(),E_USER_ERROR);