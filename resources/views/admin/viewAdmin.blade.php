@extends('layouts.admin')
@section('title','View Admin | Machakos Golf Club')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">View Admin</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
          <li class="breadcrumb-item active">View Admin</li>
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
                   @if(!empty($user['image']))
                    <img class="profile-user-img img-fluid img-circle"
                         src="{{asset('')}}storage/{{$user['image']}}"
                         alt="User">
                   @else
                    <img class="profile-user-img img-fluid img-circle"
                         src="{{asset('resources/settings/admin.png')}}"
                         alt="User">
                   @endif
                </div>

                <h3 class="profile-username text-center">{{$user['name']}} {{$user['lastName']}}</h3>

                <p class="text-center text-light">
                  @if($user->role->role=="3")
                   Admin
                  @elseif($user->role->role=="4")
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
                  {{$user['name']}} {{$user['lastName']}}
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
                    <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">Bio Data</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" id="custom-sms-tab" data-toggle="pill" href="#showSMS" role="tab" aria-controls="custom-sms-tab" aria-selected="false">SMS</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" id="custom-email-tab" data-toggle="pill" href="#showEmail" role="tab" aria-controls="custom-email-tab" aria-selected="false">Email</a>
                  </li>


                  <li class="nav-item">
                    <a class="nav-link" id="custom-activitylog-tab" data-toggle="pill" href="#activityLog" role="tab" aria-controls="custom-activitylog-tab" aria-selected="false">Activity Log</a>
                  </li>

                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-one-tabContent">

                  <div class="tab-pane fade show active" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">


		            <div class="card card-primary">
	                  <div class="col-md-12">
	                    <button type="button" class="btn btn-success float-right" data-toggle="modal"
	                            data-target="#editUser">
	                      <i class="fa fa-edit"></i>
	                       Edit
	                    </button>
	                  </div>
	                  <div class="col-md-12">
	                  <dl class="row">
	                    <dt class="col-sm-3">First Name:</dt>
	                    <dd class="col-sm-9">{{$user['name']}}</dd>

	                    <dt class="col-sm-3">Last Name:</dt>
	                    <dd class="col-sm-9">{{$user['lastName']}}</dd>

	                    <dt class="col-sm-3">Email Address:</dt>
	                    <dd class="col-sm-9">{{$user['email']}}</dd>

	                    <dt class="col-sm-3">Phone No:</dt>
	                    <dd class="col-sm-9">{{$user['phone']}}</dd>
	                  </dl>
	                </div>
		            </div>
                  </div>
            <div class="tab-pane fade" id="showSMS" role="tabpanel" aria-labelledby="custom-sms-tab">
                <div class="tab-pane" id="timeline">
                  <!-- The timeline -->
                  <div class="timeline timeline-inverse">


                    <!-- timeline item -->
                    <div>
                      <i class="fa fa-send bg-success"></i>

                      <div class="timeline-item">
                        <h3 class="timeline-header">
                          <span class="text-primary">18:/12/19 3:14</span>
                        </h3>

                        <div class="timeline-body">

                      <dl class="row">

                        <dt class="col-sm-3">Sent To:</dt>
                        <dd class="col-sm-9"><a href="#">Hudson</a></dd>

                        <dt class="col-sm-3">Message:</dt>
                        <dd class="col-sm-9">
                        	As an IT student who had just completed his studies at Kisii University with increasingly extensive knowledge of diverse IT systems and implementations, I feel confident that I would significantly benefit any organization as an IT specialist.
                        </dd>

                      </dl>


                        </div>
                      </div>
                    </div>
                    <!-- END timeline item -->



            <!--  End Icon -->
            <div class="mt5">
              <i class="fa fa-clock bg-info"></i>
            </div>


	        </div>
	        </div>



            </div>



            <div class="tab-pane fade" id="showEmail" role="tabpanel" aria-labelledby="custom-email-tab">


                <div class="tab-pane" id="timeline">
                  <!-- The timeline -->
                  <div class="timeline timeline-inverse">


                    <!-- timeline item -->
                    <div>
                      <i class="fa fa-send bg-success"></i>

                      <div class="timeline-item">
                        <h3 class="timeline-header">
                          <span class="text-primary">18:/12/19 3:14</span>
                        </h3>

                        <div class="timeline-body">

                      <dl class="row">

                        <dt class="col-sm-3">Sent To:</dt>
                        <dd class="col-sm-9"><a href="#">ngetihudson@gmail.com</a></dd>

                        <dt class="col-sm-3">Subject:</dt>
                        <dd class="col-sm-9">My Subject</dd>

                        <dt class="col-sm-3">Message:</dt>
                        <dd class="col-sm-9">
                        	As an IT student who had just completed his studies at Kisii University with increasingly extensive knowledge of diverse IT systems and implementations, I feel confident that I would significantly benefit any organization as an IT specialist.
                        </dd>

                      </dl>


                        </div>
                      </div>
                    </div>
                    <!-- END timeline item -->



            <!--  End Icon -->
            <div class="mt5">
              <i class="fa fa-clock bg-info"></i>
            </div>


	        </div>
	        </div>

            </div>


            <div class="tab-pane fade" id="activityLog" role="tabpanel"
                 aria-labelledby="custom-activitylog-tab-tab">

				<!-- Start expandaple modal -->
				<div class="col-md-12">
				<div class="card card-success">
				  <div class="card-header">
				    <h3 class="card-title">Toggle to full screen(Recommended)</h3>
				    <div class="card-tools">
				      <button type="button" class="btn btn-tool" data-card-widget="maximize">
				        <i class="fa fa-expand"></i>
				      </button>
				      <button type="button" class="btn btn-tool" data-card-widget="collapse">
				        <i class="fa fa-minus"></i>
				      </button>
				    </div>
				  </div>
				  <div class="card-body overflow-auto">

                    <div class="col-md-12 text-right">
                    	@if(count($user->activityLog)>0)
                    	<p class="mr-3">
	                    	<a href="clearAdminLog/{{$user['id']}}"
	                    	   onclick="return confirm('Are you sure your want to clear log')">
	                    		<span><i class="fa fa-trash text-danger"></i> </span>
	                    		<span class="text-danger"> Clear Log</span>
	                    	</a>
                        </p>
                        @endif
                    </div>

			        <div class="tab-pane" id="timeline">
			          <!-- The timeline -->
			          <div class="timeline timeline-inverse">


                        @forelse($user->activityLog as $activityLog)
			            <!-- timeline item -->
			            <div>
			              <i class="fa fa-history fa-fw bg-pink"></i>

			              <div class="timeline-item">
			                <h3 class="timeline-header">
			                  <span class="text-primary">{{$activityLog->created_at}}</span>
			                </h3>

			                <div class="timeline-body">

			              <dl class="row">

			                <dt class="col-sm-3">Activity:</dt>
			                <dd class="col-sm-9">
			                	{{$activityLog->activity}}
			                </dd>

			              </dl>


			                </div>
			              </div>
			            </div>
			            <!-- END timeline item -->
                         @empty

                          <p class="text-center">No activity log</p>

                         @endforelse



                @if(count($user->activityLog)>0)
			    <!--  End Icon -->
			    <div class="mt5">
			      <i class="fa fa-clock bg-pink"></i>
			    </div>
                @endif

			    </div>
			    </div>


			</div>
			</div>
			</div>
			<!-- End expandaple modal -->






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







  <!--Start user Modal -->
  <div class="modal fade" id="editUser">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Update [{{$user->name}}]</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

         <form method="post" action="{{url('/updateAdmin1')}}">
         	@csrf
           <div class="row">
          <input type="hidden" name="id" value="{{$user['id']}}">
          <div class="form-group col-md-6">
            <label class="col-form-label" for="name"> First Name</label>
            <input type="text" class="form-control is-valid" id="name" name="name"
                   value="{{$user['name']}}" required>
          </div>

          <div class="form-group col-md-6">
            <label class="col-form-label" for="lastName"> Last Name</label>
            <input type="text" class="form-control is-valid" id="lastName" name="lastName"
                   value="{{$user['lastName']}}" required>
          </div>

          <div class="form-group col-md-6">
            <label class="col-form-label" for="name">Email</label>
            <input type="email" class="form-control is-valid" id="email" name="email"
                   value="{{$user['email']}}" required>
          </div>

          <div class="form-group col-md-6">
            <label class="col-form-label" for="phone">Phone No</label>
            <input type="phone" class="form-control is-valid" id="phone" name="phone"
                   value="{{$user['phone']}}" required>
          </div>

          <div class="form-group col-md-6">
            <label class="col-form-label" for="role">Role</label>
            <select class="form-control" name="role" id="role" required>
              @if($user->role->role=="3")
              <option value="{{$user->role->role}}" selected>Admin</option>
              @elseif($user->role->role=="4")
              <option value="{{$user->role->role}}" selected>SuperAdmin</option>
              @endif
              <option value="3">Admin</option>
              @if(Auth::user()->role->role=="4")
              <option value="4">SuperAdmin</option>
              @endif
            </select>
          </div>

        </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-warning" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                    Close
              </button>
              <button type="submit" class="btn btn-success">
                   <i class="fa fa-save"></i>
                    Save
              </button>
            </div>
          </form>

      </div>
    </div>
  </div>
 </div>
  <!--End user Modal -->




</div>


@endsection
