<?php
if(!isset($_SESSION['step'][2])) {
	redirect("?p=submission_form&s=interest");
}

// array to store validation messages
$missing = array();

if(isset($_POST['btn1']) || isset($_POST['btn2'])) {
	if(isset($_POST['btn1'])) {
		unset($_POST['btn1']);
		$url = "?p=submission_form&s=interest";		
	} elseif(isset($_POST['btn2'])) {
		unset($_POST['btn2']);
		
		if(!isset($_POST['colour'])) {
			$missing['colour'] = $required['colour'];
		}
		
		$url = "?p=submission_form&s=search_engine";
	}
	
	if(empty($missing)) {	
		// if all validated	
		post2session();
		$_SESSION['step'][3] = 3;
		if(isset($url)) { 
			redirect($url); 
		}
	}
}

require_once("_tmp_header.php");
?>
<h1>Colour</h1>
<p>What&acute;s your favorite colour?</p>
<div class="dev br_ts">&nbsp;</div>
<form action="" method="post">
	<?php echo isValid('colour', $missing); ?>
	<table cellpadding="0" cellspacing="0" border="0" class="tbl_insert">
		<tr>
			<th>
				<?php echo getColours('colour'); ?>
			</th>
		</tr>
		<tr>
			<th>
				<div class="dev">&nbsp;</div>
				<label for="btn1" class="sbm btn_standard sbm_previous fl_l mr_r10">
					<input type="submit" name="btn1" id="btn1" class="sbm btn_standard" value="Previous" />
				</label>
				<label for="btn2" class="sbm btn_standard sbm_next">
					<input type="submit" name="btn2" id="btn2" class="sbm btn_standard" value="Next" />
				</label>
			</th>
		</tr>
	</table>
</form>
<?php require_once("_tmp_footer.php"); ?>