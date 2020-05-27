@extends('layouts.admin')
@section('title','View Advert')
@section('content')
    <?php
    $notices = count(DB::table('advertisements')->get());
    $failed = count(DB::table('failed_mails')->get());
    ?>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">View Banners</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">View Banners</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <button data-target="#addAdvert" data-toggle="modal" class="btn btn-success btn-block mb-3">
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
                                                <td class="mailbox-name"><a href='{{$advertisement->id}}'>{{$advertisement->group->name}}</a></td>
                                                <td class="mailbox-subject"><b>{{$advertisement->subject}}</b> --{{$advertisement->message}}
                                                </td>
                                                <td class="mailbox-attachment"><i class="fa fa-paperclip"></i><img src="http://localhost/machakos/public/storage/{{$advertisement->image}}" height="50" width="50"></td>
                                                <td class="mailbox-date">{{($advertisement->created_at->diffForHumans())}}</td>
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
                                    <select class="select2 is-valid" multiple="multiple" data-placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;"name='group_id[]' id="group_id[]">
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
    </div>
    @endsection
