<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo isset($title) ? $title : 'Quản trị hệ thống'; ?></title>
    <link href="admin/themes/css/bootstrap.min.css" rel="stylesheet">
    <link href="admin/themes/css/metisMenu.min.css" rel="stylesheet">
    <link href="admin/themes/css/timeline.css" rel="stylesheet">
    <link href="admin/themes/css/sb-admin-2.css" rel="stylesheet">
    <link href="admin/themes/css/morris.css" rel="stylesheet">
    <link href="admin/themes/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="admin/themes/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="admin/themes/css/dataTables.responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="admin/themes/js/jquery.min.js"></script>

</head>
<body>

    <div id="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Administrator</h3>
                        </div>
                        <div class="panel-body">
                            <form method="post" action="admin.php?controller=home&action=login" class="form-signin" role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                    <div class="alert alert-danger" role="alert" style="display: <?php echo isset($_SESSION['loginStatus'])?'block':'none'; ?>">
                                      Username or password is incorrect!
                                  </div>
                                  <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng Nhập</button>
                              </fieldset>
                          </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>

