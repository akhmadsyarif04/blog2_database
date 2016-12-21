
<?php

?>

<div class="header">
  <!-- <li style="font-size:90%; text-align: left; color:white; line-height:70px;" class="fa hand-peace-o"> -->

  <a href="index.php">
    <li style="font-size:1.5em;" class="fa fa-home">
      <label id="head-text">
        HOME
      </label>
    </li>
  </a>
  <?php if ($login == true): ?>
  <a href="tambah.php">
    <li style="font-size:1.5em;" class="fa fa-plus-square">
    <label id="head-text">
      TAMBAH
    </label>
    </li>
  </a>
  <a href="edit_biodata.php">
    <li style="font-size:1.5em;" class="fa fa-plus-square">
    <label id="head-text">
      EDIT
    </label>
    </li>
  </a>
  <a href="logout.php">
    <li style="font-size:1.5em;" class="fa fa-sign-out">
      <label id="head-text">
        LOGOUT
      </label>
    </li>
  </a>
  <?php else: ?>
  <a href="login.php">
    <li style="font-size:1.5em;" class="fa fa-sign-in">
      <label id="head-text">
        LOGIN
      </label>
    </li>
  </a>
  <!-- <a href="register.php"><li>REGISTER</li></a> -->
  <?php endif; ?>
</div>
