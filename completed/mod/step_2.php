<?php
if(!isset($_SESSION['step'][1])) {
	redirect("?p=submission_form");
}

// array to store validation messages
$missing = array();

if(isset($_POST['btn1']) || isset($_POST['btn2'])) {
	if(isset($_POST['btn1'])) {
		unset($_POST['btn1']);
		// process post to session
		post2session('interests');
		$url = "?p=submission_form";		
	} elseif(isset($_POST['btn2'])) {
		unset($_POST['btn2']);
		
		// collect all values
		$form = array();
		
		// process $_POST
		foreach($_POST as $key => $value) {
			$value = is_array($value) ? $value : trim($value);
			$key = explode("#",$key);
			$form[$key[0]] = $value;
		}
		
		// if 'interests' hasn't been found display validation
		if(!array_key_exists('interests', $form)) {
			$missing['interests'] = $required['interests'];
		}
		
		// process post to session
		post2session('interests');
		
		$url = "?p=submission_form&s=colour";
	}
	
	if(empty($missing)) {	
		// if all validated		
		$_SESSION['step'][2] = 2;
		if(isset($url)) { 
			redirect($url); 
		}		
	}
}

require_once("_tmp_header.php");
?>
<h1>Interests</h1>
<p>Tell us about your interests.</p>
<div class="dev br_ts">&nbsp;</div>
<form action="" method="post">
	<?php echo isValid('interests', $missing); ?>
	<table cellpadding="0" cellspacing="0" border="0" class="tbl_insert">
		<tr>
			<th>
				<?php echo getInterests('interests'); ?>
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