<?php 
require_once "admin/if-loggedin.php";
include "admin/inc/_header0.php";
include "admin/controller.php";

$token = md5(uniqid(rand(), TRUE));
$_SESSION['csrf_token'] = $token;
$_SESSION['csrf_token_time'] = time();
?>
<main>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-yellow">
                    <h3 class="panel-heading">Inscription</h3>
                </div>
                <div class="panel-body">
                    <?php
                        if(!empty($errors))
                        {
                            echo "<div class='alert alert-danger'>";
                            foreach ($errors as $error) {
                                echo "<span class='glyphicon glyphicon-remove'></span>&nbsp;".$error."<br>";
                            }
                            echo "</div>";
                        }

                        if(!empty($messages))
                        {
                            echo "<div class='alert alert-success'>";
                            foreach ($messages as $message) {
                                echo "<span class='glyphicon glyphicon-ok'></span>&nbsp;".$message."<br>";
                            }
                            echo "</div>";
                        }
                    ?>
                    <form role="form" method="post">
                        <input type="hidden" name="csrf_token" value="<?php echo $token; ?>">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Nom" name="identifiant" type="text" autofocus value="<?php if(isset($_POST['nom'])){ echo $_POST['nom']; } ?>">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Prenom" name="prenom" type="text" value="<?php if(isset($_POST['prenom'])){ echo $_POST['prenom']; } ?>">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="email" type="email" value="<?php if(isset($_POST['email'])){ echo $_POST['email']; } ?>">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Telephone" name="telephone" type="text" value="<?php if(isset($_POST['telephone'])){ echo $_POST['telephone']; } ?>">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password" value="">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Repeat Password" name="passwordr" type="password" value="">
                            </div>
                     
                            <input type="submit" class="btn btn-danger btn-lg" name="inscription" value="Inscription" />
                            <a href="login" class="btn btn-outline-danger btn-lg">Connectez-Vous !</a> 
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "admin/inc/_footer.php";
?>
