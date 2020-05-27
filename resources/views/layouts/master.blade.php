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
<body class="hold-transition layout-top-nav">
<!--Wrapper-->
<div class="wrapper">
    <nav class="main-header navbar navbar-expand-md navbar-light navbar-green">
        <div class="container">
            <a href="#" class="navbar-brand">
                <img src="{{asset('resources/settings/loged.png')}}" alt="logo" class="brand-image img-circle elevation-3" style="opacity: 8">
                <span class="brand-text font-weight-bolder text-warning">Book Games</span>
            </a>
        </div>
    </nav>
    @yield('content')
</div>
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
