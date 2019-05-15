<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Sistem Pakar</title>

	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/css/log.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assetadmin/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assetadmin/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assetadmin/css/style.css">
    <script src="<?php echo base_url(); ?>asset/js/log.js"></script>
    <script src="<?php echo base_url(); ?>assetadmin/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assetadmin/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url(); ?>assetadmin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  </head>
  <body>
<div id="login-button">
  <img src="http://dqcgrsy5v35b9.cloudfront.net/cruiseplanner/assets/img/icons/login-w-icon.png">
  </img>
</div>
<div id="container">
  <h1>Log In</h1>
  <span class="close-btn">
    <img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
  </span>

  <form>
    <input type="email" name="email" placeholder="E-mail">
    <input type="password" name="pass" placeholder="Password">
    <a href="#">Log in</a>
    <div id="remember-container">
      <input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked"/>
      <span id="remember">Remember me</span>
      <span id="forgotten">Forgotten password</span>
    </div>
</form>
</div>

<!-- Forgotten Password Container -->
<div id="forgotten-container">
   <h1>Forgotten</h1>
  <span class="close-btn">
    <img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
  </span>

  <form>
    <input type="email" name="email" placeholder="E-mail">
    <a href="#" class="orange-btn">Get new password</a>
</form>
</div>
</body>
</html>