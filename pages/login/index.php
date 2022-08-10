<?php
session_start();

// jika sudah login, alihkan ke halaman dasbor
if (isset($_SESSION['user'])) {
  header('Location: ../dasbor/index.php');
  exit();
}
require('../constant.php');
?>

<?php include('../_partials/top-login.php') ?>

<body class="unsplash-bg-random">
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <div class="login-panel panel panel-default">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-heading text-center">
              FORM LOGIN APLIKASI KEPENDUDUKAN GSM KOTA TANGERANG<br />
            </h3>
            <div class="text-center">
              <img src="../../assets/img/<?= LOGO; ?>" style="background-size: cover; width: 50%;" class="img-thumbnail" />
            </div>
          </div>
        </div>


        <div class="panel-heading">
          <h3 class="panel-title text-center">Silahkan Login Terlebih Dahulu</h3>
        </div>
        <div class="panel-body">
          <form role="form" method="post" action="../login/proses-login.php">
            <fieldset>
              <div class="form-group">
                <input class="form-control" placeholder="Nama Pengguna" name="username_user" type="username" required="" autofocus>
              </div>
              <div class="form-group">
                <input class="form-control" placeholder="Kata Sandi" name="password_user" type="password" value="" required="">
              </div>
              <div class="form-group">
                <label for="password">Captcha</label>
                <div class="row">
                  <div class="col-sm-12 col-md-6">
                    <input type="text" class="form-control" name="captcha" id="captcha" minlength="4" maxlength="4" required />
                  </div>
                  <div class="col-sm-12 col-md-6">
                    <img src="../../assets/captcha.php" alt="PHP Captcha" style="width: 100%;">
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-lg btn-primary btn-block">Masuk </button>
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
  </div>

</body>


<!--
<div class="row" style="margin-top: 75px">
  <div class="col-md-4 col-md-offset-4">
    <div class="well">

      <form class="form-signin" method="post" action="../login/proses-login.php">
        <h2 class="form-signin-heading text-center">
          <strong>LOGIN</strong>          
        </h2>        
        <input type="text" name="username_user" class="form-control" placeholder="Username" autofocus required>

        <input type="password" name="password_user" class="form-control" placeholder="Password" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">
          <i class="glyphicon glyphicon-log-in"></i> Log in
        </button>
      </form>
    </div>
  </div>
</div>
-->
<?php include('../_partials/bottom-login.php') ?>