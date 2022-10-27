<?php
include "admin/controller.php";

?>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	<title>MEIN CRUD - Modifier</title>
</head>
<body>
	<div>
		<a href="./" class="button_link">Retour en arrière</a>
	</div>
	<div class="frm-add">
		<h1 class="form-heading">Modifier</h1>
		<form name="frmAdd" method="POST">
		<div class="form-row">
			<label>Titre: </label><br>
			<input type="text" name="post_title" class="form-field" value="<?php echo $resultPost[0]['titre']; ?>" required>
		</div>
		<div class="form-row">
			<label>Description: </label><br>
			<textarea name="description" class="form-field" rows="5" required ><?php echo $resultPost[0]['description']; ?></textarea>
		</div>
		<div class="form-row">
			<label>Date: </label><br>
			<input type="date" name="post_at" class="form-field" value="<?php echo $resultPost[0]['post_at']; ?>" required />
		</div>
		<div class="form-row">
			<input name="save_record" type="submit" value="Save" class="form-submit">
		</div>
		</form>
	</div>
</body>
</html>