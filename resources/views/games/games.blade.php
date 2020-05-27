@extends('layouts.admin')
@section('title','Games | Machakos Golf CLub')
@section('content')
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Games</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Games</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="col-md-12 mb-4 text-left">
                                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#addGame">
                                        <i class="fa fa-plus"></i>Add Game
                                    </button>
                                    <a href="#" class="btn btn-success btn-sm">
                                        <i class="fa fa-file-pdf-o"></i>Export PDF
                                    </a>
                                    <a href="{{url('exportExcel')}}" class="btn bg-pink btn-sm">
                                        <i class="fa fa-file-excel-o"></i>Export Excel
                                    </a>
                                    <a href="{{'exportCSV'}}" class="btn btn-default btn-sm">
                                        <i class="fa fa-file-o"></i>Export CSV
                                    </a>
                                    <form class="form-inline ml-1 float-sm-right bg-success" method="post" action="" style="border-radius: 5px;">
                                        @csrf
                                        <div class="input-group input-group-sm">
                                            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                            <div class="input-group-append">
                                                <button class="btn btn-navbar" type="submit">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card card-default">
                                    <div class="card-header" data-widget="collapse">
                                        <h3 class="card-title">Games</h3>
                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
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
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Tournament</th>
                                                    <th>Description</th>
                                                    <th>Scheduled on</th>
                                                    <th>Created on</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php $count = 1;?>
                                                @foreach($games as $game)
                                                    <tr>
                                                        <td>{{$count++}}</td>
                                                        <td><a href='{{"viewGame/$game->id"}}'>{{$game->tournament}}</a></td>
                                                        <td>{{$game->description}}</td>
                                                        <td>{{$game->date_time}}</td>
                                                        <td>{{$game->created_at->diffForHumans()}}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-success btn-flat btn-sm">
                                                                    <i class="fa fa-cog"></i>Action
                                                                </button>
                                                                <div class="btn-group text-left">
                                                                    <button type="button" class="btn btn-success dropdown-toggle dropdown-icon" data-toggle="dropdown"></button>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <a class="dropdown-item" href='{{"viewGame/$game->id"}}'>
                                                                            <i class="fa fa-eye"></i>View
                                                                        </a>
                                                                        <a class="dropdown-item" data-toggle="modal" data-target="#editGame{{$game->id}}">
                                                                            <i class="fa fa-edit"></i>Edit
                                                                        </a>
                                                                        <a class="dropdown-item" href='{{url("/deleteGame/$game->id")}}' onclick='return confirm("Are you sure you want to delete")'>
                                                                            <i class="fa fa-trash"></i>Delete
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <div class="modal fade" id="editGame{{$game->id}}">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Edit Tournament</h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">x</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <form method="post" action='{{url("/editGame/{$game->id}")}}' enctype="multipart/form-data">
                                                                            @csrf
                                                                            @method('patch')
                                                                            <div class="row">
                                                                                <div class="form-group col-md-6">
                                                                                    <label for="tournament" class="col-form-label">Tournament</label>
                                                                                    <input type="text" name="tournament" class="form-control" id="tournament" value="{{$game->tournament}}">
                                                                                </div>
                                                                                <div class="form-group col-md-6">
                                                                                    <label for="date_time" class="col-form-label">Date Time</label>
                                                                                    <input type="text" class="form-control" name="date_time" id="date_time" value="{{$game->date_time}}">
                                                                                </div>
                                                                                <div class="form-group col-md-12">
                                                                                    <label for="description" class="col-form-label">Description</label>
                                                                                    <textarea class="form-control" name="description" id="description" value="{{$game->description}}"></textarea>
                                                                                </div>
                                                                                <div class="form-group col-md-12">
                                                                                    <label for="image" class="col-form-label">Banner</label>
                                                                                    <input type="file" name="image" id="image" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer justify-content-between">
                                                                                <button type="button" data-dismiss="modal" class="btn btn-default btn-sm">
                                                                                    <i class="fa fa-close"></i>Close
                                                                                </button>
                                                                                <button class="btn btn-success btn-sm" type="submit">
                                                                                    <i class="fa fa-save"></i>Save
                                                                                </button>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </tr>
                                                @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="modal fade" id="addGame">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Tournament</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">x</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="{{url('/games/add')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="tournament" class="col-form-label">Tournament</label>
                                    <input type="text" name="tournament" class="form-control" id="tournament">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="date_time" class="col-form-label">Date</label>
                                    <input type="date" class="form-control" name="date_time" id="date_time">
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="description" class="col-form-label">Description</label>
                                    <textarea class="form-control" name="description" id="description"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="image" class="col-form-label">Banner</label>
                                    <input type="file" name="image" id="image" class="form-control">
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" data-dismiss="modal" class="btn btn-default btn-sm">
                                    <i class="fa fa-close"></i>Close
                                </button>
                                <button class="btn btn-success btn-sm" type="submit">
                                    <i class="fa fa-save"></i>Save
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
