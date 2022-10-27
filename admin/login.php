<?php 
require "admin/controller.php";
require_once('admin/if-loggedin.php');
include "admin/inc/_header0.php";

$token = md5(uniqid(rand(), TRUE));
$_SESSION['csrf_token'] = $token;
$_SESSION['csrf_token_time'] = time();
?>
    <main class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-yellow">
                        <h3 class="panel-heading">Connexion</h3>
                    </div>
                    <div class="panel-body">
                        <?php
                            if(!empty($errors)){
                                echo "<div class='alert alert-danger'>";
                                foreach ($errors as $error) {
                                    echo "<span class='glyphicon glyphicon-remove'></span>&nbsp;".$error."<br>";
                                }
                                echo "</div>";
                            }
                        ?>
                        <form role="form" method="post">
                            <input type="hidden" name="csrf_token" value="<?php echo $token; ?>">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="text" autofocus value="<?php if(isset($_POST['email'])){ echo $_POST['email']; } ?>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-danger btn-lg" name="connexion" value="Connexion" />
                                <a href="inscription" class="btn btn-outline-danger btn-lg">Inscrivez-Vous !</a> 
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
   

<?php
include "admin/inc/_footer.php";
?>