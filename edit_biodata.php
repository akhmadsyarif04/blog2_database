<?php
require_once "core/init.php";

$login = false;

cek_session();

if($_SESSION['user']){
  $login = true;
  if(cek_status($_SESSION['user'])==1){
    $super_user = true;
  }
}

if(!$_SESSION['user']){
  header('location: index.php');
}else{

$error = "";
$id_user = "1";


  $articel = tampilkan_per_id_user($id_user);
  while($row = mysqli_fetch_assoc($articel)) {
    $username_awal = $row['username'];
    $password_awal = $row['password'];
  }


if(isset($_POST['submit'])) :
  $username = $_POST['username'];
  $password = $_POST['password'];

  if(!empty(trim($username)) && !empty(trim($password))){

    if(edit_biodata($username,$password,$id_user)){
        header("location: index.php");
    }else{
      $error = "ada masalah saat edit data";
    }
  }else{
    $error = "judul dan konten wajib diisi";
  }
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Henka04</title>
    <link rel="stylesheet" href="view/style.css" media="screen" title="no title" charset="utf-8">
  </head>
  <body>
    <?php require_once "view/header.php" ?>
    <?php require_once "view/link.php" ?>


    <center>
    <form class="tambah-input" action="" method="post">
      <label for="judul">Username</label><br><br>
      <input type="text" name="username" value="<?=$username_awal?>"><br><br>

      <label for="tag">Password</label><br><br>
      <input type="text" name="password" value="<?=$password_awal?>"><br><br>

      <div id="error">
        <?= $error ?>
      </div>

      <input id="submit" type="submit" name="submit" value="Submit">
    </form>
    </center>

    <?php require_once "view/footer.php" ?>

  </body>
</html>
<?php } ?>
