@extends('layouts.admin')
@section('title','Notices | Machakos Golf Club')
@section('content')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tail.select@0.5.15/css/bootstrap4/tail.select-default.min.css"/>
    <link rel="stylesheet" href="{{asset('tail.select-info.min.css')}}">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Notices</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Notices</li>
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
                            <div class="col-md-12 mb-4">
                                <div class="col-md-12 text-left mb-4">
                                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                            data-target="#addNewNotice">
                                        <i class="fa fa-plus"></i>
                                        Add Notice
                                    </button>
                                    <a href="{{url('/noticesPDF')}}" class="btn btn-success btn-sm">
                                        <i class="fa fa-file-pdf-o"></i>
                                        Export PDF
                                    </a>
                                    <a href="{{url('/noticeExcel')}}" class="btn bg-pink btn-sm">
                                        <i class="fa fa-file-excel-o"></i>
                                        Export Excel
                                    </a>
                                    <a href="{{url('/noticesCSV')}}" class="btn bg-white btn-sm">
                                        <i class="fa fa-file-o"></i>
                                        Export CSV
                                    </a>
                                    <nav class="navbar navbar-expand navbar-light float-right bg-info ml-1" style="border-radius: 10px;">
                                        <form method="post" action="{{url('/searchNotice')}}" class="form-inline ml-3">
                                            @csrf
                                            <div class="input-group input-group-sm">
                                                <input class="form-control form-control-navbar input-sm" name="search"
                                                       type="search" placeholder="Search" aria-label="Search">
                                                <div class="input-group-append">
                                                    <button class="btn btn-navbar" type="submit">
                                                        <i class="fa fa-search text-primary"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </nav>
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


                                @if(session('modeError'))
                                    <div class="alert alert-danger">
                                        <a href="#" class="close text-white" data-dismiss="alert">&times</a>
                                        <strong><i class="fa fa-info"></i> {{session('modeError')}}</strong>
                                    </div>
                                @endif
                                @if(session('success'))
                                    <div class="alert alert-success">
                                        <a href="#" class="close text-white" data-dismiss="alert">&times</a>
                                        <strong><i class="fa fa-info"></i> {{session('success')}}</strong>
                                    </div>
                            @endif
                            <!-- Mail box -->
                                <div class="card card-default">
                                    <div class="card-header" data-card-widget="collapse">
                                        <h3 class="card-title">Notices</h3>
                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                <tr class="bg-info">
                                                    <th>#</th>
                                                    <th>Group Name</th>
                                                    <th>Subject</th>
                                                    <th>Message</th>
                                                    <th>Platform</th>
                                                    <th>Sent On</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php $count = 1;?>
                                                @foreach($communications as $cm)
                                                    <tr>
                                                        <td>{{$count++}}</td>
                                                        <td>
                                                            <a href='{{url("/viewNotice/".$cm->id)}}'>
                                                                {{($cm->group->name)}}
                                                            </a>
                                                        </td>
                                                        <td>{{$cm->subject}}</td>
                                                        <td><?php echo htmlspecialchars_decode(stripslashes($cm->message));?></td>

                                                        <td>{{$cm->mode}}</td>
                                                        <td>{{$cm->created_at->diffForHumans()}}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <button type="button" class="btn bg-success btn-flat btn-sm">
                                                                    <i class="fa fa-cog"></i>Action
                                                                </button>
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-success dropdown-toggle dropdown-icon" data-toggle="dropdown"></button>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href='{{url("/viewNotice/".$cm->id)}}'><i class="fa fa-eye"></i>View</a>
                                                                        <a class="dropdown-item" href='{{url("/deleteNotice/".$cm->id)}}' onclick='return confirm("Are you sure you want to delete this")'>
                                                                            <i class="fa fa-trash"></i>Delete
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!--Start user Modal -->
                                                        <div class="modal fade" id="editNotice">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Update Notice</h4>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">

                                                                        <form method="post" action="{{url('/updateNotice')}}">
                                                                            @csrf
                                                                            <div class="row">

                                                                                <div class="form-group col-md-6">
                                                                                    <label class="col-form-label" for="lastName"> Notice details</label>
                                                                                    <input type="text" class="form-control is-valid" id="lastName" name="lastName"
                                                                                           placeholder="Last Name" required>
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
                                                @endforeach

                                                </tbody>
                                                <tfoot class="bg-info">
                                                <tr>
                                                    <th>#</th>
                                                    <th>Group Name</th>
                                                    <th>Subject</th>
                                                    <th>Message</th>
                                                    <th>Platform</th>
                                                    <th>Sent On</th>
                                                    <th>Action</th>
                                                </tr>
                                                </tfoot>
                                            </table>
                                            {{$communications->links()}}
                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.mail box -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Add Client Modal -->
        <div class="modal fade" id="addNewNotice">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Notice</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="{{url('/addNewNotice')}}" enctype='multipart/form-data'>
                            @csrf
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-form-label" for="subject">Subject</label>
                                    <input type="text" class="form-control is-valid" id="subject" name="subject"
                                           placeholder="Subject" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="group_id">Group</label>
                                    <select class="select2" multiple="multiple" data-placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;"name='group_id[]'>
                                        @if(isset($cGroup))
                                            @foreach($cGroup as $cg)
                                                <option value="{{$cg->id}}">{{$cg->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="col-form-label" for="message">Message</label>
                                    <textarea class="form-control" id="message" rows="7"
                                    name="message"></textarea>
                                </div>
                                <div class="form-group ml-3">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="smsMode" value="1">
                                            SMS
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group ml-3">

                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="emailMode" value="1">
                                            Email
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-warning" data-dismiss="modal">
                                    <i class="fa fa-times"></i>
                                    Close
                                </button>
                                <button type="submit" class="btn btn-success">
                                    <i class="fa fa-send"></i>
                                    Send
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Add Client Modal -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/esm/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/tail.select@0.5.15/js/tail.select-full.js"></script>
    </div>
@endsection
