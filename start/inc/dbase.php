<?php
defined("DB_HOST")
	|| define("DB_HOST", "localhost");
defined("DB_NAME")
	|| define("DB_NAME", "multi_page_form");
defined("DB_USERNAME")
	|| define("DB_USERNAME", "root");
defined("DB_PASSWORD")
	|| define("DB_PASSWORD", "pa55w0rd");
	
$conndb = mysql_pconnect(DB_HOST,DB_USERNAME,DB_PASSWORD) or trigger_error("Database connection failed.</br >" . mysql_error(),E_USER_ERROR);