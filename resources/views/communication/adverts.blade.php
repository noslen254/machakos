@extends('layouts.admin')
@section('title','Banners | Machakos GOlf Club')
@section('content')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tail.select@0.5.15/css/bootstrap4/tail.select-default.min.css"/>
    <link rel="stylesheet" href="{{asset('tail.select-info.min.css')}}">
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Banners</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Send Banners</li>
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
                                <div class="col-md-12 text-left mb-3">
                                    <button class="btn btn-info btn-sm" type="button" data-toggle="modal" data-target="#addAdvert">
                                        <i class="fa fa-plus"></i>Add Banner
                                    </button>
                                    <a href="{{url('/exportsPDF')}}" class="btn btn-success btn-sm">
                                        <i class="fa fa-file-pdf-o"></i>Export PDF
                                    </a>
                                    <a href="{{url('/exportsExcel')}}" class="btn bg-pink btn-sm">
                                        <i class="fa fa-file-excel-o"></i>Export Excel
                                    </a>
                                    <a href="{{url('exportsCSV')}}" class="btn btn-default btn-sm">
                                        <i class="fa fa-file-o"></i>Export CSV
                                    </a>
                                    <form class="form-inline ml-1 float-sm-right bg-success" method="post" action="{{url('/searchAdvert')}}" style="border-radius: 5px;">
                                        @csrf
                                        <div class="input-group input-group-sm">
                                            <input class="form-control form-control-navbar" type="search" name="search" placeholder="Search" aria-label="Search">
                                            <div class="input-group-append">
                                                <button class="btn btn-navbar" type="submit">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
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
                                <div class="card card-default">
                                    <div class="card-header" data-widget="collapse">
                                        <h3 class="card-title">Banners</h3>
                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Group</th>
                                                        <th>Subject</th>
                                                        <th>Message</th>
                                                        <th>Category</th>
                                                        <th>Sent On</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php $count = 1;?>
                                                @forelse($adverts as $advert)
                                                    <tr>
                                                        <td>{{$count++}}</td>
                                                        <td>{{$advert->group->name}}</td>
                                                        <td>{{$advert->subject}}</td>
                                                        <td>{{$advert->message}}</td>
                                                        <td>{{$advert->category}}</td>
                                                        <td>{{$advert->created_at->diffForHumans()}}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <button class="btn btn-success btn-flat btn-sm">
                                                                    <i class="fa fa-cog"></i>Action
                                                                </button>
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-success dropdown-toggle dropdown-icon" data-toggle="dropdown"></button>
                                                                    <div class="dropdown-menu">

                                                                        <a href='{{url("viewAdvert/".$advert->id)}}' class="dropdown-item"><i class="fa fa-eye"></i>View</a>
                                                                        <a href='{{url("/deleteAdvert/".$advert->id)}}' class="dropdown-item" onclick="return confirm('Are you sure you want to delete?')">
                                                                            <i class="fa fa-trash"></i>Delete
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    @empty
                                                        <tr>
                                                            <td colspan="7" class="text-info text-center">No Records Found</td>
                                                        </tr>
                                                    @endforelse
                                                </tbody>
                                            </table>
                                            {{$adverts->links()}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="modal fade" id="addAdvert">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Send Banner</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="{{url('/advertisements/send')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="form-group col-lg-6">
                                    <label class="col-form-label" for="subject">Subject</label>
                                    <input type="text" name="subject" id="subject" class="form-control is-valid" placeholder="Subject">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label class="col-form-label" for="group_id">Group</label>
                                    <select class="select2" multiple="multiple" data-placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;"name='group_id[]' id="group_id[]">
                                        @if(isset($groups))
                                            @foreach($groups as $group)
                                                <option value="{{$group->id}}">{{$group->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label class="col-form-label" for="message">Message</label>
                                    <textarea class="form-control col-md-12 my-editor" id="content" rows="7" name="message"></textarea>
                                </div>
                                <div class="col-md-12 form-group">
                                    <label class="col-form-label" for="image">Poster</label>
                                    <input type="file" class="form-control" name="image" id="image">
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">
                                    <i class="fa fa-close"></i>Close
                                </button>
                                <button type="submit" class="btn btn-success btn-sm">
                                    <i class="fa fa-send"></i>Send Poster
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/esm/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/tail.select@0.5.15/js/tail.select-full.js"></script>
    </div>
    @endsection
