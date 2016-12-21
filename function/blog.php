<?php
function tampilkan($start,$perpage){
  global $link;

  $query = "SELECT * FROM blog ORDER BY id DESC LIMIT $start, $perpage";

  return result($query);
}

function tampilkan_per_id($id){

  $query = "SELECT * FROM blog WHERE id=$id";

  return result($query);
}

function tampilkan_per_id_user($id_user){

  $query = "SELECT * FROM users WHERE id=$id_user";

  return result($query);
}

function hasil_cari($cari){
  $query = "SELECT * FROM blog WHERE judul like '%$cari%'";

  return result($query);
}

function result($query){
  global $link;
  if ($result = mysqli_query($link,$query) or die("gagal menampilkan data"))
  {
    return $result;
  }
}

function tambah_data($judul,$konten,$tag){
  $judul = escape($judul);
  $konten = escape($konten);
  $tag = escape($tag);


  $query = "INSERT INTO blog (judul,isi,tag) VALUE ('$judul','$konten','$tag')";

  return run($query);
}


function edit_data($judul,$konten,$tag,$id){
  $query = "UPDATE blog SET judul='$judul',isi='$konten',tag='$tag'
            WHERE id='$id'";

  return run($query);
}

function edit_biodata($username,$password,$id_user){
  $password = md5($password);

  $query = "UPDATE users SET username='$username', password='$password'
            WHERE id='$id_user'";

  return run($query);
}

function hapus_data($id){
  $query = "DELETE FROM blog WHERE id='$id'";

  return run($query);
}

function run($query){
  global $link;

  $result = mysqli_query($link,$query);
  if($result) return true;
  else return false;
}

function excerpt($string){
  $string = substr($string, 0, 50);

  return $string. ".....";
}

function escape($data){
  global $link;
  return mysqli_escape_string($link,$data);
}
?>
