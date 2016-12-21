<?php
require_once "core/init.php";

$login = false;

cek_session();

if(!$_SESSION['user']){
  header('location: index.php');
}else{

if(isset($_GET['id'])) {
  if (hapus_data($_GET['id'])){
    header("location: index.php");
  }
  else {
    echo "gagal menghapus";
  }
}
}
?>
