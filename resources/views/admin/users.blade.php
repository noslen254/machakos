@extends('layouts.admin')
@section('title','List Users | Machakos Golf Club')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Users</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
          <li class="breadcrumb-item active">Users</li>
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
        <div class="col-md-12 text-left mb-3">
            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addNewUser">
                <i class="fa fa-plus"></i>
                Add User
            </button>
           <a href="{{url('/usersPDF')}}" class="btn btn-warning btn-sm">
              <i class="fa fa-download"></i>
              Export pdf
           </a>

           <a href="{{url('/adminsCSV')}}" class="btn btn-info btn-sm">
              <i class="fa fa-download"></i>
              Export csv
           </a>

           <a href="{{url('/usersExcel')}}" class="btn btn-primary btn-sm">
              <i class="fa fa-download"></i>
              Export Excel
           </a>
        </div>

      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr class="bg-info">
          <th>#</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Phone Number</th>
          <th>Role</th>
          <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php $count=1;  ?>
        @forelse($users as $user)
        <tr>
          <td>{{$count++}}</td>
          <td>
           <a href='{{url("/viewUser/$user->id")}}'>{{$user->name}}</a>
          </td>

          <td>{{$user->lastName}}</td>
          <td>{{$user->phone}}</td>
          <td>{{$user->email}}</td>
          <td>
              @if($user->role==3)
                <span class="badge badge-primary">Admin</span>
              @elseif($user->role==4)
                <span class="badge badge-success">SuperAdmin</span>
              @endif
          </td>
          <td>

              <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                      data-target="#editUser{{$user->id}}">
                    <i class="fa fa-edit"></i>
                     Edit
              </button>
            @if(Auth::user()->id==$user->id)
            @else
            <a class="btn btn-sm btn-danger" href='{{url("/deleteUser/$user->id")}}'
               onclick='return confirm("Are you sure you want to delete {{$user->name}}")'>
              <i class="fa fa-trash"></i>
               Delete
            </a>
            @endif
          </td>
          <!--Start user Modal -->
          <div class="modal fade" id="editUser{{$user->id}}">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Update [{{$user->name}}]</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">

                 <form method="post" action="{{url('/updateAdmin')}}">
                 	@csrf
                   <div class="row">
                  <input type="hidden" name="id" value="{{$user->id}}">
                  <div class="form-group col-md-6">
                    <label class="col-form-label" for="name"> First Name</label>
                    <input type="text" class="form-control is-valid" id="name" name="name"
                           value="{{$user->name}}" required>
                  </div>

                  <div class="form-group col-md-6">
                    <label class="col-form-label" for="lastName"> Last Name</label>
                    <input type="text" class="form-control is-valid" id="lastName" name="lastName"
                           value="{{$user->lastName}}" required>
                  </div>

                  <div class="form-group col-md-6">
                    <label class="col-form-label" for="name">Email</label>
                    <input type="email" class="form-control is-valid" id="email" name="email"
                           value="{{$user->email}}" required>
                  </div>

                  <div class="form-group col-md-6">
                    <label class="col-form-label" for="phone">Phone No</label>
                    <input type="phone" class="form-control is-valid" id="phone" name="phone"
                           value="{{$user->phone}}" required>
                  </div>

                  <div class="form-group col-md-6">
                    <label class="col-form-label" for="role">Role</label>
                    <select class="form-control" name="role" id="role" required>
                      @if($user->role=="3")
                      <option value="{{$user->role}}" selected>Admin</option>
                      @elseif($user->role=="4")
                      <option value="{{$user->role}}" selected>SuperAdmin</option>
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

        </tr>
        @empty

        @endforelse
        </tbody>
        <tfoot class="bg-info">
        <tr>
          <th>#</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Phone Number</th>
          <th>Role</th>
          <th>Action</th>
        </tr>
        </tfoot>
      </table>




    </div>
  </div>
</div>
</div>
</section>






<!-- Add User Modal -->

      <div class="modal fade" id="addNewUser">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Add User</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <form method="post" action="{{url('/addAdmin')}}">
             @csrf
            <div class="modal-body">

	         <div class="row">
	          <div class="form-group col-md-6">
	            <label class="col-form-label" for="name"> First Name</label>
	            <input type="text" class="form-control is-valid" id="name" name="name"
	                   placeholder="First Name" required>
	          </div>

	          <div class="form-group col-md-6">
	            <label class="col-form-label" for="lastName"> Last Name</label>
	            <input type="text" class="form-control is-valid" id="lastName" name="lastName"
	                   placeholder="Last Name" required>
	          </div>

	          <div class="form-group col-md-6">
	            <label class="col-form-label" for="name">Email</label>
	            <input type="email" class="form-control is-valid" id="email" name="email"
	                   placeholder="Email" required>
	          </div>

	          <div class="form-group col-md-6">
	            <label class="col-form-label" for="phone">Phone No</label>
	            <input type="phone" class="form-control is-valid" id="phone" name="phone"
	                   placeholder="Phone No" required>
	          </div>

	          <div class="form-group col-md-6">
	            <label class="col-form-label" for="role">Role</label>
	            <select class="form-control" name="role" id="role" required>
	              <option value="3">Admin</option>
                @if(Auth::user()->role->role=="4")
	              <option value="4">SuperAdmin</option>
                @endif
	            </select>
	          </div>

	        </div>

            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-warning" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                    Close
              </button>
              <button type="submit" class="btn btn-success">
                   <i class="fa fa-plus"></i>
                    Add
              </button>
            </div>
            </form>
          </div>
        </div>
      </div>



<!-- End Add User Modal -->


</div>
@endsection
