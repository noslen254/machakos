@if(Gate::check('isAdmin') || Gate::check('isSuper'))
<script type="text/javascript">    
window.location = "{{url('/home')}}";
</script>
@else

@endif

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title> Admin | Machakos Golf Club</title>
<link rel="shortcut icon" href="{{asset('resources/settings/fav-icon.png')}}" type="image/png">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/bootstrap.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/animate.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/select2.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/AdminLTE.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/iCheckall.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/all-skins.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/ladda-themeless.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/lightbox.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/toastr.min.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/core.css')}}">
<link media="all" type="text/css" rel="stylesheet" href="{{asset('resources/assets/css/custom.css')}}">
<script src="tinymce/tinymce.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<style type="text/css">
.buttontext{background:0 0!important;border:none;padding:0!important;cursor:pointer}.unread{background-color:#c8bbbe;font-weight:700}.read{background-color:#ebdde2}.name{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:100px}.mailTitle{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:140px}.mailMessage{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:250px}.buttonColor{background-color:#c8bbbe;padding:0;border:none}.buttonColor1{background-color:#ebdde2;padding:0;border:none}
</style>
</head>
<body class="skin-purple-light sidebar-mini">
<div class="wrapper">
<header class="main-header">
    <!-- Logo -->
    <a href="{{url('/')}}" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>Z</b></span>
        <!-- logo for regular state and mobile devices -->
        <img src="{{asset('resources/settings/logo.png')}}" class="" style="max-height: 30px;"/>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                                                
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                     @if(!empty(Auth::user()->image))
                        <img src="{{asset('')}}storage/{{Auth::user()->image}}" 
                             class="user-image" alt="User Image">
                       @else
                        <img src="{{asset('resources/settings/admin.png')}}" 
                             class="user-image" alt="User Image">
                       @endif
                        <span class="hidden-xs">{{Auth::user()->name}}</span>
                    </a>
                    <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                     @if(!empty(Auth::user()->image))
                            <img src="{{asset('')}}storage/{{Auth::user()->image}}" 
                                 class="img-circle"
                                 alt="User Image">
                       @else
                            <img src="{{asset('resources/settings/admin.png')}}" class="img-circle"
                                 alt="User Image">
                       @endif
                            <p>
                                {{Auth::user()->name}}
                            </p>
                            <p>
                                {{Auth::user()->email}}
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#"
                                   class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <a href="{{ url('/logout') }}" 
                                   class="btn btn-default btn-flat">
                                    Logout </a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- =============================================== -->
    <!-- Left side column. contains the sidebar -->
    <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                     @if(!empty(Auth::user()->image))
                            <img src="{{asset('')}}storage/{{Auth::user()->image}}" 
                                 class="img-circle"
                                 alt="User Image">
                       @else
                            <img src="{{asset('resources/settings/admin.png')}}" class="img-circle"
                                 alt="User Image">
                       @endif
            </div>
            <div class="pull-left info">
                <p><a href="#" title="Profile">{{Auth::user()->name}}</a></p>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="">
                <a href="{{url('/welcomeMessage')}}">
                    <i class="fa fa-envelope"></i> Message (1)</a>
            </li>

            </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<main class="py-4">
  @yield('content')
</main>

    </div>
<footer class="main-footer text-center">
&copy;
<script>
document.write(new Date().getFullYear())
</script>
<a target="_blank" href="#" title="Loreto">Machakos Golf Club</a>.
All Rights Reserved.
</footer>
</div>

<script src="{{asset('resources/assets/js/jquery.min.js')}}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{asset('resources/assets/js/bootstrap.min.js')}}"></script>
<script src="{{asset('resources/assets/js/ann-scripts.js')}}" type="text/javascript"></script>
<script src="{{asset('resources/assets/js/icheck.min.js')}}"></script>
<script src="{{asset('resources/assets/js/pace.min.js')}}"></script>
<script src="{{asset('resources/assets/js/jquery.blockUI.min.js')}}"></script>
<script src="{{asset('resources/assets/js/spin.min.js')}}"></script>
<script src="{{asset('resources/assets/js/ladda.min.js')}}"></script>
<script src="{{asset('resources/assets/js/toastr.min.js')}}"></script>
<script src="{{asset('resources/assets/js/slimscroll.min.js')}}"></script>
<script src="{{asset('resources/assets/js/select2.full.min.js')}}"></script>
<script src="{{asset('resources/assets/js/adminlte.min.js')}}"></script>
<script src="{{asset('resources/assets/js/functions.js')}}"></script>
<script src="{{asset('resources/assets/js/main.js')}}"></script>
</body>
