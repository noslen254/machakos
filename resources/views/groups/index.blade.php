@extends('layouts.admin')
@section('title','Groups Machakos Golf Club')
@section('content')
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Groups</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Groups</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 text-left mb-3">
                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addNewGroup">
                            <i class="fa fa-plus"></i>
                            Add Group
                        </button>
                        <a href="{{url('/groupsPDF')}}" class="btn btn-warning btn-sm">
                            <i class="fa fa-download"></i>
                            Export pdf
                        </a>
                        <a href="{{url('/agroupsCSV')}}" class="btn btn-info btn-sm">
                            <i class="fa fa-download"></i>
                            Export csv
                        </a>
                        <a href="{{url('/groupsExcel')}}" class="btn btn-primary btn-sm">
                            <i class="fa fa-download"></i>
                            Export Excel
                        </a>
                    </div>
                    @foreach($users as $user)
                        @if($user->id =="1")
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-fuchsia">
                                <i class="fa fa-user-o"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                <span class="info-box-number">{{count($user->clients)}}</span>
                            </div>
                        </div>
                    </div>
                        @elseif($user->id =="2")
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-secondary">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @elseif($user->id =="3")
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-warning">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @elseif($user->id =="4")
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-primary">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @elseif($user->id =="5")
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-info">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @elseif($user->id =="6")
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-success">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="col-md-3 col-sm-6 col-12">
                                <div class="info-box">
                            <span class="info-box-icon bg-red">
                                <i class="fa fa-user"></i>
                            </span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><a href='{{url("/viewGroup/$user->id")}}'>{{$user->name}}</a></span>
                                        <span class="info-box-number">{{count($user->clients)}}</span>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @endforeach
                </div>
            </div>
        </section>
        <!-- Add User Modal -->

        <div class="modal fade" id="addNewGroup">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Group</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <form method="post" action="{{url('/addNewGroup')}}">
                        @csrf
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-form-label" for="name">Name</label>
                                    <input type="text" class="form-control is-valid" id="name" name="name" placeholder="Group Name" required>
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
    </div>
    @endsection
