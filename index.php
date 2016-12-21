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

$perpage = 6;
$page = isset($_GET["halaman"]) ? (int) $_GET["halaman"] : 1;
$start = ($page > 1) ? ($page * $perpage) - $perpage : 0;

$result = mysqli_query($link,"SELECT * FROM blog");
$total = mysqli_num_rows($result);

$pages = ceil($total / $perpage);

$articel = tampilkan($start,$perpage);

if(isset($_GET['cari'])){
  $articel = hasil_cari($_GET['cari']);
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

<center>
  <div class="search">
    <form class="" action="" method="get">
      <i class="fa fa-search" style="font-size:2em;" aria-hidden="true"></i>
      <input id="kolom-search" type="search" name="cari" placeholder="silahkan cari disini..">
      <!-- <input id="tombol-search" type="submit" name="cari" value="Cari"> -->
    </form>
  </div>
</center>

    <?php while($row = mysqli_fetch_assoc($articel)) : ?>
      <div class="daftar-blog">
        <a id="judul" href="single.php?id=<?= $row['id']; ?>"><h2> <?= $row["judul"]; ?></h2></a>
        <p id="isi">
        Tag : <?= $row["tag"]; ?>
        <label id="waktu" for=""><?= $row["waktu"]; ?></label>
        </p>
        <!-- <p id="tag">Tag :   </p> -->
        <div class="tombol">
          <?php if($login == true): ?>
            <a id="edit" href="edit.php?id=<?= $row['id']; ?>">
              <i class="fa fa-pencil" aria-hidden="true">
                Edit
              </i>
            </a>
          <?php if($super_user == true): ?>
            <a id="edit" href="delete.php?id=<?= $row['id']; ?>">
              <i class="fa fa-trash-o" aria-hidden="true">
                Hapus
              </i>
            </a>
          <?php endif; ?>
          <?php endif; ?>
        </div>
      </div>
    <?php endwhile; ?>

    <h3>Halaman {
    <?php

    for ($i = 1; $i <= $pages; $i++) {
    ?>
            <a href="?halaman=<?= $i ?>"><?= $i ?></a>
            <?php
        }//end for
        ?>
     }</h3>

    <?php
    require_once "view/soc-med.php";
    require_once "view/footer.php";
    ?>


  </body>
</html>
