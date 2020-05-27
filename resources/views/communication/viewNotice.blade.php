@extends('layouts.admin')
@section('title','View Advert')
@section('content')
    <?php
    $notices = count(DB::table('group_mails')->get());
    $failed = count(DB::table('failed_mails')->get());
    ?>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Mails & SMS</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Mails & SMS</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <button data-target="#addNewNotice" data-toggle="modal" class="btn btn-success btn-block mb-3">
                            <i class="fa fa-comments-o"></i>Compose
                        </button>
                        <div class="card">
                            <div class="card-header bg-white">
                                <h3 class="card-title">Posters / Banners</h3>
                            </div>
                            <div class="card-body p-0">
                                <ul class="nav nav-pills flex-column">
                                    <li class="nav-item active">
                                        <a href="#" class="nav-link">
                                            <i class="fa fa-inbox"></i>Sent
                                            <span class="badge bg-pink badge-pill float-right">{{$notices}}</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="" class="nav-link">
                                            <i class="fa fa-times-circle"></i>Failed
                                            <span class="badge bg-danger badge-pill float-right">{{$failed}}</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card card-success card-outline">
                            <div class="card-header bg-white">
                                <h3 class="card-title">Poster</h3>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive mailbox-messages">
                                    <table class="table table-hover table-striped">
                                        <tbody>
                                        <tr>
                                            <td class="mailbox-name"><a href='{{$id->id}}'>{{$id->group->name}}</a></td>
                                            <td class="mailbox-subject"><b>{{$id->subject}}</b> --{{$id->message}}
                                            </td>
                                            <td class="mailbox-date">{{($id->created_at->diffForHumans())}}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
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
                                    <input type="text" class="form-control is-valid" id="subject" name="subject" placeholder="Subject" required>
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
    </div>
@endsection
