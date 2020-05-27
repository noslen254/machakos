@extends('layouts.admin')
@section('title','Profile | Machakos Golf Club')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Profile</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
          <li class="breadcrumb-item active">Profile</li>
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

          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-outline bg-success">
              <div class="card-body box-profile">
                <div class="text-center">
                   @if(!empty(Auth::user()->image))
                    <img class="profile-user-img img-fluid img-circle" src="{{asset('')}}storage/{{Auth::user()->image}}" alt="User">
                   @else
                    <img class="profile-user-img img-fluid img-circle"
                         src="{{asset('resources/settings/admin.png')}}"
                         alt="User">
                   @endif

                </div>

                <h3 class="profile-username text-center">{{Auth::user()->name}} {{Auth::user()->lastName}}</h3>

                <p class="text-center text-light">
                  @if(Auth::user()->role->role=="3")
                   Admin
                  @elseif(Auth::user()->role->role=="4")
                   Super Admin
                  @endif
                </p>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">About Me</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <strong>Name</strong>

                <p class="text-muted">
                  <i class="fa fa-user-o text-success"></i>
                  {{Auth::user()->name}}  {{Auth::user()->lastName}}
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Phone Number</strong>

                <p class="text-muted">
                  <i class="fa fa-phone text-success"></i>
                  {{Auth::user()->phone}}
                </p>
                <hr>
              </div>
            </div>
          </div>


    <div class="col-md-9">


          <div class="col-md-12">
            <div class="card card-primary card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">My Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Change Password</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-one-messages-tab" data-toggle="pill" href="#custom-tabs-one-messages" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Change Profile Picture</a>
                  </li>

                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-one-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">


                <div class="card card-primary">


                  @if(session('reject'))
                  <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    {{session('reject')}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  @endif
                 @if(count($errors)>0)

                 @foreach($errors->all() as $error)
                  <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    {{$error}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  @endforeach
                  @endif
                  @if(session('response'))
                  <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{session('response')}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  @endif

                  <form method="post" action="{{url('/updateProfile')}}">
                     @csrf
                    <div class="card-body">

                      <div class="form-group">
                        <label class="col-form-label" for="name"> First Name</label>
                        <input type="text" class="form-control is-valid" id="name" name="name"
                               placeholder="First Name" value="{{Auth::user()->name}}" required>
                      </div>

                      <div class="form-group">
                        <label class="col-form-label" for="lastName"> Last Name</label>
                        <input type="text" class="form-control is-valid" id="lastName" name="lastName"
                               placeholder="Last Name" value="{{Auth::user()->lastName}}" required>
                      </div>

                      <div class="form-group">
                        <label class="col-form-label" for="name">Email</label>
                        <input type="email" class="form-control is-valid" id="email" name="email"
                               placeholder="Email" value="{{Auth::user()->email}}" required>
                      </div>

                      <div class="form-group">
                        <label class="col-form-label" for="phone">Phone No</label>
                        <input type="phone" class="form-control is-valid" id="phone" name="phone"
                               placeholder="Phone No" value="{{Auth::user()->phone}}" required>
                      </div>

                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer text-right">
                      <button type="submit" class="btn btn-success">
                         <i class="fa fa-save"></i>
                           Update
                      </button>
                    </div>
                  </form>
                </div>

                  </div>
                  <div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">


                  <form method="post" action="{{url('/changePassword')}}">
                    @csrf
                    <div class="card-body">

                      <div class="form-group">
                        <label class="col-form-label" for="oldpass">Old Password</label>
                        <input type="password" class="form-control is-valid" id="oldpass" name="oldpass"
                               required>
                      </div>

                      <div class="form-group">
                        <label class="col-form-label" for="name">New Password</label>
                        <input type="password" class="form-control is-valid" id="name" name="password"
                               required>
                      </div>

                      <div class="form-group">
                        <label class="col-form-label" for="name">Confirm Password</label>
                        <input type="password" class="form-control is-valid" id="name"
                               name="password_confirmation"
                               required>
                      </div>


                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer text-right">
                      <button type="submit" class="btn btn-success">
                         <i class="fa fa-save"></i>
                           Update
                      </button>
                    </div>
                  </form>




                  </div>
                  <div class="tab-pane fade" id="custom-tabs-one-messages" role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
                  <form method="post" action="{{url('/updateProfilePicture')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="card-body">

                      <div class="form-group">
                        <label class="col-form-label" for="picture">Picture(less than 2Mbs)</label>
                        <input type="file" class="form-control is-valid" id="picture" name="picture"
                               required>
                      </div>



                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer text-right">
                      <button type="submit" class="btn btn-success">
                         <i class="fa fa-save"></i>
                           Update
                      </button>
                    </div>
                  </form>

                  </div>

                </div>
              </div>
              <!-- /.card -->
            </div>
          </div>


    </div>


    </div>
  </div>
</section>


</div>

@endsection
