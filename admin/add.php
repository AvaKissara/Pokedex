<?php
require "admin/controller.php";
?>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	<title>Poképost</title>
</head>
<body>
	<div>
		<a href="../admin/" class="button_link">Retour arrière</a>
	</div>
	<div class="frm-add">
		<h1 class="form-heading">Postez !</h1>
		<form name="frmAdd" method="POST">
			<div class="form-row">
				<label>Title: </label><br>
				<input type="text" name="post_title" class="form-field" required>
			</div>
			<div class="form-row">
				<label>Description: </label><br>
				<textarea name="description" class="form-field" rows="5" required></textarea>
			</div>
			<div class="form-row">
				<label>Date: </label><br>
				<input type="date" name="post_at" class="form-field" required>
			</div>
			<div class="form-row">
				<input name="add_record" type="submit" value="Add" class="form-submit">
			</div>
  		</form>
	</div> 
</body>
</html>