@extends('layouts.admin')
@section('title','Clients | Machakos Golf Club')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        @isset($category)
              <h1 class="m-0 text-dark">{{$category['name']}} <span class="badge badge-success badge-pill">{{count($users)}}</span></h1>
        @else
        <h1 class="m-0 text-dark">Clients</h1>
        @endif
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
          <li class="breadcrumb-item active">Clients</li>
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
            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#addNewClient">
                <i class="fa fa-plus"></i>
                Add User
            </button>
           <a href="{{url('/clientsPDF')}}" class="btn btn-success btn-sm">
              <i class="fa fa-file-pdf-o"></i>
              Export PDF
           </a>
            <a href="{{url('/clientsExcel')}}" class="btn bg-pink btn-sm">
                <i class="fa fa-file-excel-o"></i>
                Export Excel
            </a>
           <a href="{{url('/clientsCSV')}}" class="btn bg-white btn-sm">
              <i class="fa fa-file-o"></i>
              Export CSV
           </a>
            <nav class="navbar navbar-expand navbar-light float-right bg-info ml-1" style="border-radius: 15px;">
                <form method="post" action="{{url('/searchClient')}}" class="form-inline ml-3">
                    @csrf
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar input-sm" name="search" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fa fa-search text-primary"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </nav>
            <nav class="navbar navbar-expand navbar-light float-right bg-info" style="border-radius: 15px;">
                <form method="post" action="{{url('/sortGroup')}}" class="form-inline ml-3">
                    @csrf
                    <div class="input-group input-group-sm">
                        <select class="form-control form-control-navbar input-sm" name="filter" required>
                            @if(isset($cGroup))
                                @foreach($cGroup as $cg)
                                    <option value="{{$cg->id}}">{{$cg->name}}</option>
                                @endforeach
                            @endif
                        </select>

                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fa fa-filter text-primary"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </nav>
        </div>

      <div class="col-md-12 mb-4">
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
      </div>
      <table class="table table-bordered table-striped">
        <thead>
        <tr class="bg-info">
          <th>#</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Group</th>
            <th>Added On</th>
          <th>Action</th>
        </tr>
        </thead>
        <tbody>

        @forelse($users as $user)
        <tr>
          <td>{{++$count}}</td>
          <td>
           <a href='{{url("/viewClient/$user->id")}}'>
             {{$user->firstName}} {{$user->middleName}} {{$user->lastName}}
           </a>
          </td>
          <td>{{$user->email}}</td>
          <td>{{$user->phone}}</td>
          <td>{{$user->group->name}}</td>
            <td>{{$user->created_at}}</td>
          <td>
              <div class="btn-group">
                  <button type="button" class="btn btn-default btn-flat btn-sm">
                      <i class="fa fa-cog"></i>Action
                  </button>
                  <div class="btn-group text-left">
                      <button type="button" class="btn btn-default dropdown-toggle dropdown-icon" data-toggle="dropdown"></button>
                      <div class="dropdown-menu dropdown-menu-right">
                          <a class="dropdown-item" data-toggle="modal" data-target="#editClient{{$user->id}}">
                              <i class="fa fa-edit"></i>
                              Edit
                          </a>
                          <a class="dropdown-item" href='{{url("/deleteClient/$user->id")}}'
                             onclick='return confirm("Are you sure you want to delete {{$user->name}}")'>
                              <i class="fa fa-trash"></i>
                              Delete
                          </a>
                      </div>
                  </div>
              </div>
          </td>
            <!--Edit Modal-->
            <div class="modal fade" id="editClient{{$user->id}}">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title"><span class="badge bg-fuchsia badge-pill"><i class="fa fa-user"></i>Edit {{$user->firstName}}</span></h2>
                            <button type="button" class="close" aria-label="Close" data-dismiss="modal">
                                <span aria-hidden="true">X</span>
                            </button>
                        </div>
                        <form class="" action='{{url("/members/{$user->id}")}}' method="post">
                            @csrf
                            @method('patch')
                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="firstName">First Name</label>
                                        <input type="text" name="firstName" id="firstName" class="form-control is-valid" placeholder="First Name" value="{{$user->firstName}}" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="middleName">Middle Name</label>
                                        <input type="text" name="middleName" class="form-control is-valid" id="middleName" placeholder="Middle Name" value="{{$user->middleName}}" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="lastName">Last Name</label>
                                        <input type="text" name="lastName" class="form-control is-valid" id="lastName" placeholder="Last Name" value="{{$user->lastName}}" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="email">Email</label>
                                        <input type="text" name="email" id="email" class="form-control is-valid" placeholder="Email" value="{{$user->email}}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="phone">Phone</label>
                                        <input type="text" name="phone" id="phone" class="form-control is-valid" placeholder="Phone No" value="{{$user->phone}}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="location">Location</label>
                                        <input type="text" name="location" id="location" class="form-control is-valid" placeholder="Location" value="{{$user->location}}" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="workPlace">WorkPlace</label>
                                        <input type="text" name="workPlace" class="form-control is-valid" id="workPlace" placeholder="Work Place" value="{{$user->workPlace}}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="col-form-label" for="group_id">Group</label>
                                        <select name="group_id" class="form-control is-valid form-control-navbar input-sm" id="group_id">
                                            @if(isset($cGroup))
                                                @foreach($cGroup as $group)
                                                    <option value="{{$group->id}}">{{$group->name}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button class="btn btn-warning" type="button" data-dismiss="modal">
                                    <i class="fa fa-close"></i>Close
                                </button>
                                <button type="submit" class="btn btn-success">
                                    <i class="fa fa-refresh"></i>Update Member
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--/.Edit Modal-->

        </tr>
        @empty
         <tr>
           <td colspan="6" class="text-center">No record found</td>
         </tr>
        @endforelse
        </tbody>
        <tfoot class="bg-info">
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Group</th>
            <th>Added On</th>
          <th>Action</th>
        </tr>
        </tfoot>
      </table>

      <div class="col-md-12 mt-4">
         {{$users->links()}}
      </div>


    </div>
  </div>
</div>
</div>
</section>

    <!-- Add Client Modal -->
    <div class="modal fade" id="addNewClient">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title"><span class="badge badge-info badge-pill"><i class="fa fa-user"></i>Add Member</span></h2>
                    <button type="button" class="close" aria-label="Close" data-dismiss="modal">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                <form class="" action="{{url('/members/addClient')}}" method="post">
                    @csrf
                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="firstName">First Name</label>
                                <input type="text" name="firstName" id="firstName" class="form-control is-valid" placeholder="First Name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="middleName">Middle Name</label>
                                <input type="text" name="middleName" class="form-control is-valid" id="middleName" placeholder="Middle Name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="lastName">Last Name</label>
                                <input type="text" name="lastName" class="form-control is-valid" id="lastName" placeholder="Last Name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control is-valid" placeholder="Email" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="phone">Phone</label>
                                <input type="text" name="phone" id="phone" class="form-control is-valid" placeholder="Phone No" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="location">Location</label>
                                <input type="text" name="location" id="location" class="form-control is-valid" placeholder="Location" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="workPlace">WorkPlace</label>
                                <input type="text" name="workPlace" class="form-control is-valid" id="workPlace" placeholder="Work Place" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-form-label" for="group_id">Group</label>
                                <select name="group_id" class="form-control is-valid form-control-navbar input-sm" id="group_id">
                                    @if(isset($cGroup))
                                        @foreach($cGroup as $group)
                                            <option value="{{$group->id}}">{{$group->name}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button class="btn btn-warning" type="button" data-dismiss="modal">
                            <i class="fa fa-close"></i>Close
                        </button>
                        <button type="submit" class="btn btn-success">
                            <i class="fa fa-plus-circle"></i>Add Member
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Add Client Modal -->


</div>
@endsection
