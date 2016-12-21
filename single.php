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

$error = "";
$id = $_GET['id'];

if(isset($_GET['id'])){
  $articel = tampilkan_per_id($id);
  while($row = mysqli_fetch_assoc($articel)) {
    $judul_awal = $row['judul'];
    $konten_awal = $row['isi'];
    $tag_awal = $row['tag'];
  }
}

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

      <div class="single-page">
        <p id="judul_single">
          <?= $judul_awal; ?>
        </p>
        <p id="isi_single">
          <?= $konten_awal; ?>
        </p>
        <p id="tag_single">
          <?= $tag_awal; ?>
        </p>
      </div>

    <?php require_once "view/footer.php" ?>

  </body>
</html>
