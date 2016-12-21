<?php
function register_user($name,$pass){
  $name = escape($name);
  $pass = escape($pass);

  $pass = md5($pass);

  $query = "INSERT INTO users (username,password,status) VALUE ('$name','$pass',0)";

  return run($query);
}

function register__cek_nama($name){
  $name = escape($name);

  $query = "SELECT * FROM users WHERE username='$name'";

  global $link;

  if($result = mysqli_query($link,$query)){
    if(mysqli_num_rows($result) ==0) return true;
    else return false;
  }
}

function cek_data($name,$pass){
  $name = escape($name);
  $pass = escape($pass);

  $pass = md5($pass);

  $query = "SELECT * FROM users WHERE username='$name' AND password='$pass'";

  global $link;

  if($result = mysqli_query($link,$query)){
    if(mysqli_num_rows($result) !=0) return true;
    else return false;
  }
}

function cek_status($username){
  $name = escape($username);

  $query = "SELECT * FROM users WHERE username='$name'";

  global $link;

  if($result = mysqli_query($link,$query)){
    while($row = mysqli_fetch_assoc($result)){
      $status = $row['status'];
    }
    return $status;
  }
}

function cek_session(){
  if (!isset($_SESSION['user'])){
    $_SESSION['user'] = null;
  }
}
?>
