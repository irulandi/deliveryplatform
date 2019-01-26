<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.hns.dp.beans.UserAccount" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
	<% String context = request.getContextPath(); %>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/ionicons.min.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/style.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/clean.min.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/pixeladmin.min.css" />
	<link rel="stylesheet" href="<%=context%>/assets/css/datatables.min.css" />

	<title>Delivery Platform</title>
	
</head>
<body>    
<nav class="px-nav px-nav-left">
	<button type="button" class="px-nav-toggle" data-toggle="px-nav">
    	<span class="px-nav-toggle-arrow"></span>
        <span class="navbar-toggle-icon"></span>
        <span class="px-nav-toggle-label font-size-11">HIDE MENU</span>
	</button>
	<%
	 	UserAccount currentUser = (UserAccount)session.getAttribute("loginUser");
		String userName = currentUser.getName();
	%>
	<ul class="px-nav-content">
		<li class="px-nav-box p-a-3 b-b-1" id="demo-px-nav-box">
        	<img src="assets/demo/avatars/1.jpg" alt="" class="pull-xs-left m-r-2 border-round" style="width: 20px; height: 54px;">
            <div class="font-size-16"><span class="font-weight-light">Welcome, </span><strong><%= userName %></strong></div>
            <div class="btn-group" style="margin-top: 4px;">
            	<a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-envelope"></i></a>
                <a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-user"></i></a>
                <a href="#" class="btn btn-xs btn-primary btn-outline"><i class="fa fa-cog"></i></a>
                <a href="#" class="btn btn-xs btn-danger btn-outline"><i class="fa fa-power-off"></i></a>
			</div>
		</li>
		<li class="px-nav-item">
			<a href="#"><i class="px-nav-icon ion-ios-pulse-strong"></i><span class="px-nav-label">Dashboards</span></a>
		</li>
		<li class="px-nav-item">
        	<a href="#"><i class="px-nav-icon ion-ios-analytics"></i><span class="px-nav-label">Projects</span></a>
		</li>
        <li class="px-nav-item px-nav-dropdown">
            <a href="#"><i class="px-nav-icon ion-erlenmeyer-flask"></i><span class="px-nav-label">Widgets</span></a>
            <ul class="px-nav-dropdown-menu">
                <li class="px-nav-item"><a href="widgets-lists.html"><span class="px-nav-label">Lists</span></a></li>
            </ul>
        </li>
        <li class="px-nav-item">
            <a href="utilities.html"><i class="px-nav-icon ion-cube"></i><span class="px-nav-label">Utilities</span></a>
        </li>		
	</ul>
</nav>
<nav class="navbar px-navbar">
	<!-- Header -->
    <div class="navbar-header">
    	<a class="navbar-brand px-demo-brand" href="index.html"><span class="px-demo-logo bg-primary"><span class="px-demo-logo-1"></span><span class="px-demo-logo-2"></span><span class="px-demo-logo-3"></span><span class="px-demo-logo-4"></span><span class="px-demo-logo-5"></span><span class="px-demo-logo-6"></span><span class="px-demo-logo-7"></span><span class="px-demo-logo-8"></span><span class="px-demo-logo-9"></span></span>Delivery Platform</a>
	</div>
	<!-- Navbar togglers -->
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#px-demo-navbar-collapse" aria-expanded="false"><i class="navbar-toggle-icon"></i></button>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="px-demo-navbar-collapse">
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
	        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					<i class="px-navbar-icon fa fa-bullhorn font-size-14"></i>
	                <span class="px-navbar-icon-label">Notifications</span>
	                <span class="px-navbar-label label label-success">5</span>
	            </a>
				<div class="dropdown-menu p-a-0" style="width: 300px">
                	<div id="navbar-notifications" style="height: 280px; position: relative;">
                    	<div class="widget-notifications-item">
                        	<div class="widget-notifications-title text-danger">SYSTEM</div>
                            <div class="widget-notifications-description"><strong>Error 500</strong>: Syntax error in index.php at line <strong>461</strong>.</div>
                            <div class="widget-notifications-date">12h ago</div>
                            <div class="widget-notifications-icon fa fa-hdd-o bg-danger"></div>
						</div>
					</div>
                    <a href="#" class="widget-more-link">MORE NOTIFICATIONS</a>
				</div>	            				
			</li>
			<li class="dropdown">
            	<a href="https://google.com" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                	<i class="px-navbar-icon fa fa-envelope font-size-14"></i>
                    <span class="px-navbar-icon-label">Income messages</span>
                    <span class="px-navbar-label label label-danger">8</span>
				</a>
                <div class="dropdown-menu p-a-0" style="width: 300px;">
                	<div id="navbar-messages" style="height: 280px; position: relative;">
                    	<div class="widget-messages-alt-item">
                        	<img src="assets/demo/avatars/2.jpg" alt="" class="widget-messages-alt-avatar">
                            <a href="#" class="widget-messages-alt-subject text-truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
                            <div class="widget-messages-alt-description">from <a href="#">Robert Jang</a></div>
                            <div class="widget-messages-alt-date">2h ago</div>
						</div>
					</div>
                    <a href="#" class="widget-more-link">MORE MESSAGES</a>
				</div> <!-- / .dropdown-menu -->
			</li>	
			<li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                	<img src="~/lib/px/assets/1.jpg" alt="" class="px-navbar-image">
                    <span class="hidden-md"><%= userName %></span>
				</a>
                <ul class="dropdown-menu">
                	<li><a href="pages-profile-v2.html"><span class="label label-warning pull-xs-right"><i class="fa fa-asterisk"></i></span>Profile</a></li>
                    <li><a href="pages-account.html">Account</a></li>
                    <li class="divider"></li>
                    <li><a href="<%=request.getContextPath() %>/logout"><i class="dropdown-icon fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
				</ul>
			</li>					
		</ul>
	</div>    	
</nav>
