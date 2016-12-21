<?php
require_once "core/init.php";

$login = false;

cek_session();

if($_SESSION['user']){
  header('location: index.php');
}else{

$error = "";

if(isset($_POST['submit'])) :
  $name = $_POST['username'];
  $pass = $_POST['password'];

  if(!empty(trim($name)) && !empty(trim($pass))){

    if(cek_data($name,$pass)){
        $_SESSION['user'] = $name;
        header("location: index.php");
    }else{
      $error = "*cek kembali login anda";
    }
  }else{
    $error = "username dan password wajib diisi";
  }
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Henka04</title>
    <?php require_once "view/link.php" ?>

  </head>
  <body>

    <?php require_once "view/header.php" ?>

    <center>
    <div class="login">
      <form class="form-login" action="" method="post">
        <p id="form-header">
          LOGIN
        </p>
        <label for="username">username</label><br>
        <input  type="text" name="username" value=""><br><br>

        <label for="password">password</label><br>
        <input  type="password" name="password" value=""><br>

        <div id="error">
          <?= $error ?>
        </div><br>

        <input type="submit" name="submit" value="Submit">
      </form>
    </div>
    </center>

    <?php
    require_once "view/soc-med.php";
    require_once "view/footer.php";
    ?>

  </body>
</html>

<?php } ?>
