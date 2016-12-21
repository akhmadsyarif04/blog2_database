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

if(isset($_POST['submit'])) :
  $judul = $_POST['judul'];
  $konten = $_POST['isi'];
  $tag = $_POST['tag'];

  if(!empty(trim($judul)) && !empty(trim($konten))){

    if(tambah_data($judul,$konten,$tag)){
        header("location: index.php");
    }else{
      $error = "ada masalah saat menambah data";
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
    <link rel="stylesheet" href="view/style.css">
  </head>
  <body>
    <?php require_once "view/header.php" ?>
    <?php require_once "view/link.php" ?>


    <center>
    <form class="tambah-input" action="" method="post">
      <label for="judul">Judul</label><br><br>
      <input type="text" name="judul" value=""><br><br>

      <label for="tag">Tag</label><br><br>
      <input type="text" name="tag" value=""><br><br>

      <label for="isi">Isi</label><br><br>
      <textarea name="isi" id="text-ckeditor"></textarea>
      <script>CKEDITOR.replace('text-ckeditor');</script>

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
