@extends('layouts.admin')
@section('title','Dashboard | Machakos Golf Club')
@section('content')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>
<?php
$clients = count(DB::table('clients')->get());
$users = count(DB::table('users')->get());
$notices = count(DB::table('group_mails')->get());
$groups = count(DB::table('groups')->get());

?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('/home')}}">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">

          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-info">
              <span class="info-box-icon"><i class="fa fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Members</span>
                <span class="info-box-number">{{$clients}}</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>

                <span class="progress-description mt-2">
	              <a href="{{url('/members')}}" class="small-box-footer text-light">
	                More info <i class="fa fa-arrow-circle-right"></i>
	              </a>
                </span>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-success">
              <span class="info-box-icon"><i class="fa fa-user-o"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Users</span>
                <span class="info-box-number">{{$users}}</span>
                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description mt-2">
	              <a href="{{url('users')}}" class="small-box-footer text-light">
	                More info <i class="fa fa-arrow-circle-right"></i>
	              </a>
                </span>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-purple">
              <span class="info-box-icon"><i class="fa fa-briefcase"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Mails</span>
                <span class="info-box-number">{{$notices}}</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description mt-2">
	              <a href="{{url('notices')}}" class="small-box-footer text-light">
	                More info <i class="fa fa-arrow-circle-right"></i>
	              </a>
                </span>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-fuchsia">
              <span class="info-box-icon"><i class="fa fa-envelope-o"></i></span>
              <div class="info-box-content">
                <span class="info-box-text">Groups</span>
                <span class="info-box-number">{{$groups}}</span>
                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>

                <span class="progress-description mt-2">
	              <a href="{{url('groups')}}" class="small-box-footer text-light">
	                More info <i class="fa fa-arrow-circle-right"></i>
	              </a>
                </span>
              </div>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-md-4 connectedSortable">
            <!-- DONUT CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Users and Groups</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  	<i class="fa fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  {!! $clientsCount->container() !!}
                  {!! $clientsCount->script() !!}
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- DONUT CHART -->
            <div class="card card-pink">
              <div class="card-header">
                <h3 class="card-title">Recent Activities</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  	<i class="fa fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  @foreach($activity as $act)
                      <div class="timeline">
                          <div class="time-label">
                              <span class="bg-success">System Activities</span>
                          </div>
                          <div>
                              <i class="fa fa-envelope-o bg-info"></i>
                              <div class="timeline-item">
                                  <span class="time"><i class="fa fa-clock-o"></i>{{$act->created_at}}</span>
                                  <h3 class="timeline-header">{{$act->email}}</h3>
                                  <p class="timeline-body">{{$act->activity}}</p>
                              </div>
                          </div>
                      </div>
                      @endforeach
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-md-4 connectedSortable">
            <!-- DONUT CHART -->
            <div class="card card-white">
              <div class="card-header">
                <h3 class="card-title">Communication</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  	<i class="fa fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  {!! $mailsCount->container() !!}
                  {!! $mailsCount->script() !!}
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- DONUT CHART -->
            <div class="card card-indigo">
              <div class="card-header">
                <h3 class="card-title">Games</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  	<i class="fa fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  {!! $gamesCount->container() !!}
                  {!! $gamesCount->script() !!}
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
            <section class="col-md-4 connectedSortable">
                <div class="card bg-white">
                    <div class="card-header">
                        <h3 class="card-title">Members Registration</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-toolbar" data-card-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        {!! $usersCount->container() !!}
                        {!! $usersCount->script() !!}
                    </div>
                </div>
                <div class="card card-white">
                    <div class="card-header">
                        <h3 class="card-title">Recent Members</h3>
                        <div class="card-tools">
                            <h5><span class="badge badge-success badge-pill">{{$count}}</span></h5>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        @foreach($recentS as $recent)
                            <ul class="users-list m-30">
                                <li>
                                    <img src="{{asset('resources/settings/avatar5.png')}}"/>
                                    <p class="users-list-name">{{$recent->firstName}}</p>
                                    <span class="users-list-date">{{$recent->created_at->diffForHumans()}}</span>
                                </li>
                            </ul>
                            @endforeach
                    </div>
                    <div class="card-footer text-center">
                        <a href="{{url('members')}}">View Members</a>
                    </div>
                </div>
            </section>
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>


@endsection
