<?php
// array to store validation messages
$missing = array();

if(isset($_POST['first_name'])) {

	foreach($_POST as $key => $value) {
		$value = is_array($value) ? $value : trim($value);
		if(empty($value) && array_key_exists($key, $required)) {
			$missing[$key] = $required[$key];
		}
	}
	
	if(!isset($_POST['gender'])) {
		$missing['gender'] = $required['gender'];
	}
	
	if(empty($missing)) {
	
		post2session();
		$_SESSION['step'][1] = 1;
		redirect("?p=submission_form&s=interest");
		
	}
}

require_once("_tmp_header.php");
?>
<h1>Personal details</h1>
<p>Please tell us a little bit about yourself.</p>
<div class="dev br_ts">&nbsp;</div>
<form action="" method="post">
	<table cellpadding="0" cellspacing="0" border="0" class="tbl_insert">
		<tr>
			<th><label for="first_name">First name *</label></th>
			<td>
				<?php echo isValid('first_name', $missing); ?>
				<input type="text" name="first_name" id="first_name" class="fld" value="<?php echo stickyText('first_name'); ?>" />
			</td>
		</tr>
		<tr>
			<th><label for="last_name">Last name *</label></th>
			<td>
				<?php echo isValid('last_name', $missing); ?>
				<input type="text" name="last_name" id="last_name" class="fld" value="<?php echo stickyText('last_name'); ?>" />
			</td>
		</tr>
		<tr>
			<th><label for="age">Age *</label></th>
			<td>
				<?php echo isValid('age', $missing); ?>
				<?php echo getAge('age'); ?>
			</td>
		</tr>
		<tr>
			<th><label for="gender">Gender *</label></th>
			<td>
				<?php echo isValid('gender', $missing); ?>
				<label for="gender_m" class="radio"><input type="radio" name="gender" id="gender_m" value="m"<?php echo stickyRadio('gender','m'); ?> /><span>Male</span></label>
				<label for="gender_f" class="radio"><input type="radio" name="gender" id="gender_f" value="f"<?php echo stickyRadio('gender','f'); ?> /><span>Female</span></label>
			</td>
		</tr>
		<tr>
			<th><label for="country">Country *</label></th>
			<td>
				<?php echo isValid('country', $missing); ?>
				<?php echo getCountries('country'); ?>
			</td>
		</tr>
		<tr>
			<th>&nbsp;</th>
			<td>
				<div class="dev">&nbsp;</div>
				<label for="btn" class="sbm btn_standard sbm_next">
					<input type="submit" id="btn" class="sbm btn_standard" value="Next" />
				</label>
			</td>
		</tr>
	</table>
</form>
<?php require_once("_tmp_footer.php"); ?>