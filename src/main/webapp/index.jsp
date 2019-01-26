<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  <title>Delivery Platform</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&amp;subset=latin" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/css/pixeladmin.min.css" />
  <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
  <style>
    .page-signin-header {
      box-shadow: 0 2px 2px rgba(0,0,0,.05), 0 1px 0 rgba(0,0,0,.05);
    }

    .page-signin-header .btn {
      position: absolute;
      top: 12px;
      right: 15px;
    }
    .p-a-2 {
	    padding: 15px!important;
	}

    html[dir="rtl"] .page-signin-header .btn {
      right: auto;
      left: 15px;
    }

    .page-signin-container {
      width: auto;
      margin: 30px 10px;
    }

    .page-signin-container form {
      border: 0;
      box-shadow: 0 2px 2px rgba(0,0,0,.05), 0 1px 0 rgba(0,0,0,.05);
    }

    @media (min-width: 544px) {
      .page-signin-container {
        width: 350px;
        margin: 60px auto;
      }
    }

    .page-signin-social-btn {
      width: 40px;
      padding: 0;
      line-height: 40px;
      text-align: center;
      border: none !important;
    }

    #page-signin-forgot-form { display: none; }
    
  </style>
</head>
<body>
	<div class="page-signin-header p-a-2 text-sm-center bg-white">
		<a class="px-demo-brand px-demo-brand-lg text-default" href="index.html">
			<span class="px-demo-logo bg-primary m-t-0">
				<span class="px-demo-logo-1"></span>
				<span class="px-demo-logo-2"></span>
				<span class="px-demo-logo-3"></span>
				<span class="px-demo-logo-4"></span>
				<span class="px-demo-logo-5"></span>
				<span class="px-demo-logo-6"></span>
				<span class="px-demo-logo-7"></span>
				<span class="px-demo-logo-8"></span>
				<span class="px-demo-logo-9"></span>
			</span>HnS Asset Delivery Manager
		</a>
	</div>
	<div class="page-signin-container" id="page-signin-form">
		<h2 class="m-t-0 m-b-4 text-xs-center font-weight-semibold font-size-20">Sign In to your Account</h2>
		<% if (request.getAttribute("errorMessage") != null)
			{
			%>
				<div class="alert alert-warning">
					"${errorMessage}"
				</div>			
			<%
			}
		%>
		
		<%
			if (request.getParameter("err") != null)
			{
			%>
				<div class="alert alert-warning">
					You have successfully logged out.
				</div>							
			<%
			}
		%>

		<form method="post" action="login" class="panel p-a-4">
	      <fieldset class=" form-group form-group-lg">
	        <input type="text" class="form-control" name="userName" placeholder="Email" tabindex="1" required="true">
	      </fieldset>
	      <fieldset class=" form-group form-group-lg">
	        <input type="password" class="form-control" name="password" placeholder="Password" tabindex="2" required="true">
	      </fieldset>
	      <div class="clearfix">
	        <!-- <a href="#" class="font-size-12 text-muted pull-xs-right" id="page-signin-forgot-link">Forgot your password?</a> -->
	      </div>
		  <button type="submit" class="btn btn-block btn-lg btn-primary m-t-3" tabindex="3">Sign In</button>			
		</form>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/pixeladmin.min.js"></script>
	<script>
		$(function() {
	      $('#page-signin-forgot-link').on('click', function(e) {
	        e.preventDefault();

	        $('#page-signin-form').css({ display: 'none' });
	        $('#page-signin-forgot-form').css({ display: 'block' });

	        $(window).trigger('resize');
	      });

	      $('#page-signin-forgot-back').on('click', function(e) {
	        e.preventDefault();

	        $('#page-signin-form').css({ display: 'block' });
	        $('#page-signin-forgot-form').css({ display: 'none' });

	        $(window).trigger('resize');
	      });

	      $('[data-toggle="tooltip"]').tooltip();
	    });
	</script>
</body>
</html>
