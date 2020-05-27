@extends('layouts.admin')
@section('title','Analytics | Machakos Golf Club')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Analytics</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
          <li class="breadcrumb-item active">Analytics</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->


<!-- Main content -->
<section class="content col-md-12">
<div class="row">
<div class="col-md-12">

  <div class="card">
    <!-- /.card-header -->

    <div class="card-body">

      <div class="row">
        <div class="col-md-4">

        <div id="active_users" class="mx-auto"></div>

        @gaugechart('Active', 'active_users')

        </div>

        <div class="col-md-4">

        <div id="browsers"></div>

        @donutchart('topBrowsers', 'browsers')

        </div>

        <div class="col-md-4">

        <div id="countries"></div>

        @donutchart('topCountries', 'countries')

        </div>


      </div>




      <div class="row">

        <div class="col-md-12">

        <div id="pageVisitorsAnalytics" style="height: 400px;"></div>

        @linechart('pageVisitorsAnalytics', 'pageVisitorsAnalytics')

        </div>


        <div class="col-md-12">

        <div id="pageVisitorsAnalytics1" style="height: 400px;"></div>

        @linechart('pageVisitorsAnalytics1', 'pageVisitorsAnalytics1')

        </div>


        <div class="col-md-12">

        <div id="countrySessions"></div>

        @geochart('countrySessions', 'countrySessions')
        </div>


      </div>


    </div>
  </div>
</div>
</div>
</section>


</div>
@endsection
