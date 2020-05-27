@extends('layouts.admin')
@section('title','View Client | Machakos Golf Club')
@section('content')
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Member Profile</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{'/home'}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">View Member</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card card-success card-outline">
                            <div class="card-body box-profile">
                                <div class="text-center">
                                    <img class="profile-user-img img-fluid img-circle"
                                         src="{{asset('resources/settings/admin.png')}}"
                                         alt="User">
                                </div>
                                <h3 class="profile-username text-center">{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</h3>
                                <p class="text-center">{{$client->group->name}}</p>
                            </div>
                        </div>
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-user-o"></i> About {{$client->firstName}}.</h3>
                            </div>
                            <div class="card-body">
                                <strong><i class="fa fa-envelope-o text-info"></i> Email</strong>
                                <p class="text-muted">
                                    {{$client->email}}
                                </p>
                                <hr/>
                                <strong><i class="fa fa-phone text-info"></i> Contact</strong>
                                <p class="text-muted">
                                    {{$client->phone}}
                                </p>
                                <hr/>
                                <strong><i class="fa fa-map-marker mr-1 text-info"></i>Location</strong>
                                <p class="text-muted">
                                    {{$client->location}}
                                </p>
                                <hr/>
                                <strong><i class="fa fa-anchor text-info"></i> Profession</strong>
                                <p class="text-muted">
                                    {{$client->workPlace}}
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card card-success card-tabs">
                            <div class="card-header p-0 pt-0">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#update" data-toggle="tab">Update Member</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#sendMessage" data-toggle="tab">Send Message</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#sendEmail" data-toggle="tab">Send Email</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#invoice" data-toggle="tab">Games Played</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#games" data-toggle="tab">Invoice</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="active tab-pane" id="update">
                                        <form method="post" action='{{url("/member/{$client->id}")}}' class="form-horizontal">
                                            @csrf
                                            @method('patch')
                                            <div class="form-group row">
                                                <label class="col-form-label col-sm-2" for="firstName">First Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="name" class="form-control" value="{{$client->firstName}}" id="firstName" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="middleName" class="col-form-label col-sm-2">Middle Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="middleName" class="form-control" value="{{$client->middleName}}" id="middleName" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-sm-2" for="lastName">Last Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="lastName" id="lastName" class="form-control" value="{{$client->lastName}}" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="phone" class="col-form-label col-sm-2">Contact</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="phone" class="form-control" value="{{$client->phone}}" id="phone">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="email" class="col-form-label col-sm-2">Email</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="email" class="form-control" value="{{$client->email}}" id="email">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-sm-2" for="location">Location</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="location" id="location" class="form-control" value="{{$client->location}}" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="workPlace" class="col-form-label col-sm-2">Profession</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="workPlace" id="workPlace" class="form-control" value="{{$client->workPlace}}">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="group_id" class="col-form-label col-sm-2">Group</label>
                                                <div class="col-sm-10">
                                                    <select name="group_id" class="form-control" id="group_id">
                                                        <option value="{{$client->group->id}}">{{$client->group->name}}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-12 text-right">
                                                    <button class="btn btn-success btn-sm" type="submit">
                                                        <i class="fa fa-edit"></i>Update
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="sendMessage">
                                        <form method="post" class="form-horizontal" action="{{url('members/addMessage')}}">
                                            @csrf
                                            <div class="form-group">
                                                <label for="phone" class="col-form-label">Contact</label>
                                                <input type="text" name="phone" class="form-control" id="phone" value="{{$client->phone}}" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="message" class="col-form-label">Message</label>
                                                <textarea name="message" id="message" class="form-control" rows="4"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-12 text-right">
                                                    <button type="submit" class="btn btn-success btn-sm">
                                                        <i class="fa fa-send"></i>Send
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="card direct-chat direct-chat-primary">
                                            <div class="card-header bg-white">
                                                <h3 class="card-title">Sent SMS</h3>
                                                <div class="card-tools">
                                                    <span data-toggle="tooltip" title="3 New Messages" class="badge badge-primary">3</span>
                                                    <button type="button" class="btn btn-tool bg-warning" data-card-widget="collapse">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-tool bg-info" data-toggle="tooltip" title="Contacts"
                                                            data-widget="chat-pane-toggle">
                                                        <i class="fa fa-comments"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="direct-chat-messages">
                                                    <div class="direct-chat-msg">
                                                        <div class="direct-chat-infos clearfix">
                                                            <span class="direct-chat-name float-left">Alexander Pierce</span>
                                                            <span class="direct-chat-timestamp float-right">23 Jan 2:00 pm</span>
                                                        </div>
                                                        <div>
                                                            <img class="direct-chat-img img-circle elevation-3" src="{{asset('resources/settings/logo.png')}}" alt="message">
                                                            <div class="direct-chat-text">
                                                                Is this template really for free? That's unbelievable!
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="direct-chat-msg right">
                                                        <div class="direct-chat-infos clearfix">
                                                            <span class="direct-chat-name float-right">Alexander Pierce</span>
                                                            <span class="direct-chat-timestamp float-left">23 Jan 2:00 pm</span>
                                                        </div>
                                                        <div>
                                                            <img class="direct-chat-img img-circle elevation-3" src="{{asset('resources/settings/logo.png')}}" alt="message">
                                                            <div class="direct-chat-text">
                                                                Is this template really for free? That's unbelievable!
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="direct-chat-msg">
                                                        <div class="direct-chat-infos clearfix">
                                                            <span class="direct-chat-name float-left">Alexander Pierce</span>
                                                            <span class="direct-chat-timestamp float-right">23 Jan 2:00 pm</span>
                                                        </div>
                                                        <div>
                                                            <img class="direct-chat-img img-circle elevation-3" src="{{asset('resources/settings/logo.png')}}" alt="message">
                                                            <div class="direct-chat-text">
                                                                Is this template really for free? That's unbelievable!
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="direct-chat-msg right">
                                                        <div class="direct-chat-infos clearfix">
                                                            <span class="direct-chat-name float-right">Alexander Pierce</span>
                                                            <span class="direct-chat-timestamp float-left">23 Jan 2:00 pm</span>
                                                        </div>
                                                        <div>
                                                            <img class="direct-chat-img img-circle elevation-3" src="{{asset('resources/settings/logo.png')}}" alt="message">
                                                            <div class="direct-chat-text">
                                                                Is this template really for free? That's unbelievable!
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="sendEmail">
                                        <form method="post" class="form-horizontal" action="{{url('/members/addNotice')}}">
                                            @csrf
                                            <input type="hidden" name="client_id" value="{{$client->id}}">
                                            <div class="form-group">
                                                <label class="col-form-label" for="email">Email</label>
                                                <input type="text" name="email" class="form-control" id="email" value="{{$client->email}}" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="subject" class="col-form-label">Subject</label>
                                                <input type="text" name="subject" id="subject" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="message" class="col-form-label">Message</label>
                                                <textarea class="form-control" id="content" rows="7"  name="message"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-12 text-right">
                                                    <button class="btn btn-sm btn-success" type="submit">
                                                        <i class="fa fa-send"></i>Send
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="card direct-chat direct-chat-primary">
                                            <div class="card-header bg-white">
                                                <h3 class="card-title">Sent Mails</h3>
                                                <div class="card-tools">
                                                    <button type="button" class="btn btn-tool bg-warning" data-card-widget="collapse">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                @foreach($mails as $mail)
                                                    <div class="direct-chat-messages">
                                                        <div class="direct-chat-msg right">
                                                            <div class="direct-chat-infos clearfix">
                                                                <span class="direct-chat-name float-right">{{$client->firstName}} {{$client->lastName}}</span>
                                                                <span class="direct-chat-timestamp float-left">{{$mail->created_at}}</span>
                                                            </div>
                                                            <div>
                                                                <div class="direct-chat-msg ">
                                                                    <img class="direct-chat-img img-circle elevation-3" src="{{asset('resources/settings/logo.png')}}" alt="message">
                                                                    <div class="direct-chat-text">
                                                                        {{$mail->subject}}
                                                                    </div>
                                                                </div>
                                                                <div class="direct-chat-text">
                                                                    {{$mail->message}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="invoice">
                                        <div class="card">
                                            <div class="card-body">
                                                @foreach($tees as $tee)
                                                    <div class="timeline">
                                                        <div class="time-label">
                                                            <span class="bg-success">Tournament</span>
                                                        </div>
                                                        <div>
                                                            <i class="fa fa-soccer-ball-o bg-success"></i>
                                                            <div class="timeline-item">
                                                                <span class="time"><i class="fa fa-clock-o"></i>{{$tee->time->name}}</span>
                                                                <h3 class="timeline-header">{{$tee->game->tournament}}</h3>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <i class="fa fa-star bg-info"></i>
                                                            <div class="timeline-item">
                                                                <h3 class="timeline-header">{{$tee->tee->tee}}</h3>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <i class="fa fa-phone bg-pink"></i>
                                                            <div class="timeline-item">
                                                                <h3 class="timeline-header">{{$tee->phone}}</h3>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <i class="fa fa-users bg-purple"></i>
                                                            <div class="timeline-item">
                                                                <h3 class="timeline-header">
                                                                    {{$tee->player1}}
                                                                    {{$tee->player2}}
                                                                    {{$tee->player3}}
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="games">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-12 col-12 mb-4">
                                                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#addInvoice">
                                                            <i class="fa fa-plus"></i>Add Invoice
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="addInvoice">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h2 class="modal-title">Header</h2>
                                                        <button type="button" class="close" aria-label="Close" data-dismiss="modal">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <div class=""></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
