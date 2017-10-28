<?php
switch($s) {
	case "interest":
	$content = getMod(4);
	break;
	case "colour":
	$content = getMod(5);
	break;
	case "search_engine":
	$content = getMod(6);
	break;
	case "summary":
	$content = getMod(7);
	break;
	default:
	$content = getMod(3,$content);
}
echo $content;