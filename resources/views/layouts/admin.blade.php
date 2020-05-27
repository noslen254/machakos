@if(Gate::check('isAdmin') || Gate::check('isSuper'))
@else

<script type="text/javascript">
window.location = "{{url('/newRedirect')}}";
</script>
@endif
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>@yield('title', 'Dashboard | Machakos Golf Club')</title>
  <link rel="shortcut icon" href="{{asset('resources/settings/fav-icon.png')}}" type="image/png">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!--Tinymce library-->
  <script src="{{asset('resources/tinymce/tinymce.min.js')}}"></script>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('resources/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
  <!-- Theme style -->
    <!--Color Picker CSS-->
    <link rel="stylesheet" href="{{asset('select2/bootstrap-colorpicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('select2/select2-bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('resources/dist/css/adminlte.min.css')}}">
    <!--Select2-->
    <link rel="stylesheet" href="{{asset('select2/css/select2.min.css')}}">
    <!--My Styles-->
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('/home')}}" class="brand-link">
      <img src="{{asset('resources/settings/logo.png')}}" alt="Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-normal">{{ config('app.name', 'Laravel') }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
           @if(!empty(Auth::user()->image))

           <img src="{{asset('')}}storage/{{Auth::user()->image}}" alt="User"
                class="user-image img-circle elevation-2">
           @else
           <img src="{{asset('resources/settings/admin.png')}}" alt="User"
                class="user-image img-circle elevation-2">
           @endif
        </div>
        <div class="info">
          <a href="{{url('/profile')}}" class="d-block">{{Auth::user()->name}} {{Auth::user()->lastName}}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item {{Request::path() ==='home' ? 'current_page_item' : ''}}">
            <a href="{{url('/home')}}" class="nav-link">
              <i class="nav-icon fa fa-tachometer"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item {{Request::path() ==='members' ? 'current_page_item' : ''}}">
            <a href="{{url('/members')}}" class="nav-link">
              <i class="nav-icon nav-icon fa fa-users"></i>
              <p>
                Members
              </p>
            </a>
          </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-envelope-o fa-fw"></i>
            <p>
               Communication
              <i class="right fa fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
          <li class="nav-item {{Request::path() ==='notices' ? 'current_page_item' : ''}}">
            <a href="{{url('/notices')}}" class="nav-link">
              <p class="ml-3">
                <i class="nav-icon fa fa-comments-o"></i>
                Emails and SMS
              </p>
            </a>
          </li>
          <li class="nav-item {{Request::path() ==='advertisements' ? 'current_page_item' : ''}}">
            <a href="{{url('/advertisements')}}" class="nav-link">
              <p class="ml-3">
                <i class="nav-icon fa fa-envelope-o"></i>
                 Banners / Posters
              </p>
            </a>
          </li>
        </ul>
      </li>
        <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
                <i class="nav-icon fa fa-shield fa-fw"></i>
                <p>
                    Games
                    <i class="right fa fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item {{Request::path() ==='games' ? 'current_page_item' : ''}}">
                    <a href="{{url('/games')}}" class="nav-link">
                        <p class="ml-3">
                            <i class="nav-icon fa fa-star"></i>
                            Games
                        </p>
                    </a>
                </li>
                <li class="nav-item {{Request::path() ==='bookedGames' ? 'current_page_item' : ''}}">
                    <a href="{{url('/bookedGames')}}" class="nav-link">
                        <p class="ml-3">
                            <i class="nav-icon fa fa-bars"></i>Booked Games
                        </p>
                    </a>
                </li>
            </ul>
        </li>
        @if(Gate::check('isSuper'))
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-plug fa-fw"></i>
            <p>
               Administration
              <i class="right fa fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
          <li class="nav-item {{Request::path() ==='users' ? 'current_page_item' : ''}}">
            <a href="{{url('/users')}}" class="nav-link">
              <p class="ml-3">
                <i class="nav-icon fa fa-user-o"></i>
                Users
              </p>
            </a>
          </li>
          <li class="nav-item {{Request::path() ==='profile' ? 'current_page_item' : ''}}">
              <a href="{{url('/profile')}}" class="nav-link">
                  <p class="ml-3">
                    <i class="nav-icon nav-icon fa fa-user"></i>
                      Profile
                  </p>
              </a>
          </li>
          <li class="nav-item {{Request::path() ==='groups' ? 'current_page_item' : ''}}">
              <a href="{{url('/groups')}}" class="nav-link">
                  <p class="ml-3">
                    <i class="nav-icon fa fa-user-circle-o"></i>
                      Groups
                  </p>
              </a>
          </li>
          <li class="nav-item {{Request::path() ==='analytics' ? 'current_page_item' : ''}}">
            <a href="{{url('/analytics')}}" class="nav-link">
              <p class="ml-3">
                <i class="nav-icon fa fa-eye"></i>
                 Analytics
              </p>
            </a>
          </li>
        </ul>
      </li>
      @endif
      <li class="nav-item">
        <a href="{{url('/logout')}}" class="nav-link">
          <i class="nav-icon fa fa-power-off"></i>
          <p>
            Logout
          </p>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>
 @yield('content')
  <footer class="main-footer">
    <strong>Copyright &copy;

        <script type="text/javascript">
            document.write(new Date().getFullYear());
        </script>
        <a href="http://zalegoinstitute.ac.ke/public/">Machakos Golf Club</a></strong>
    All rights reserved.
  </footer>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('resources/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('resources/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- DataTables -->
<script src="{{asset('resources/plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{asset('resources/plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('resources/dist/js/adminlte.min.js')}}"></script>
<!--color picker-->
<script src="{{asset('select2/bootstrap-colorpicker.min.js')}}"></script>
<!--Select 2-->
<script src="{{asset('select2/js/select2.full.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('resources/dist/js/demo.js')}}"></script>
<!-- Sweet Alert -->
@include('sweetalert::alert')
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });

  $(function () {
      //Initialize Select2 Elements
      $('.select2').select2({
          theme: 'bootstrap4',
          closeOnSelect: false,
          allowClear: true,
      })


      //Initialize Select2 Elements
      $('.select3').select2({
          theme: 'bootstrap4',
          closeOnSelect: false,
          maximumSelectionLength: 3,
          allowClear: true,
      })

      //Initialize Select2 Elements
      $('.select2bs4').select2({
          theme: 'bootstrap4',
      })

      //Datemask dd/mm/yyyy
      $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
      //Datemask2 mm/dd/yyyy
      $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
      //Money Euro
      $('[data-mask]').inputmask()

      //Date range picker
      $('#reservation').daterangepicker()
      //Date range picker with time picker
      $('#reservationtime').daterangepicker({
          timePicker: true,
          timePickerIncrement: 30,
          locale: {
              format: 'MM/DD/YYYY hh:mm A'
          }
      })
      //Date range as a button
      $('#daterange-btn').daterangepicker(
          {
              ranges   : {
                  'Today'       : [moment(), moment()],
                  'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                  'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
                  'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                  'This Month'  : [moment().startOf('month'), moment().endOf('month')],
                  'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate  : moment()
          },
          function (start, end) {
              $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
          }
      )

      //Timepicker
      $('#timepicker').datetimepicker({
          format: 'LT'
      })

      //Bootstrap Duallistbox
      $('.duallistbox').bootstrapDualListbox()

      //Colorpicker
      $('.my-colorpicker1').colorpicker()
      //color picker with addon
      $('.my-colorpicker2').colorpicker()

      $('.my-colorpicker2').on('colorpickerChange', function(event) {
          $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
      });

      $("input[data-bootstrap-switch]").each(function(){
          $(this).bootstrapSwitch('state', $(this).prop('checked'));
      });

  })

</script>
</body>
</html>
