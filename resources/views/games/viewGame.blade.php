@extends('layouts.admin')
@section('title','View Game | Machakos Golf Club')
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Game Details</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">View Game</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
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
            <div class="card card-solid">
                <div class="card-body pb-0">
                    <div class="row d-flex align-items-stretch">
                        <div class="card bg-white">
                            <div class="card-header text-muted border-bottom-0">
                                <div class="text-left">
                                    <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addTee">
                                        <i class="fa fa-plus"></i> Book Game
                                    </button>
                                </div>
                            </div>
                            <div class="card-body pt-0">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <h2 class="lead"><b>{{$game->tournament}}</b></h2>
                                        <p class="text-muted text-sm"><b>Description: </b> {{$game->description}}</p>
                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                            <li class=""><span class="fa-li"><i class="fa fa-lg fa-comment"></i></span>Email: info@machakosgolfclub.com</li>
                                            <li class=""><span class="fa-li"><i class="fa fa-lg fa-phone"></i></span> Phone #: +254 735 939 715</li>
                                            <li class=""><span class="fa-li"><i class="fa fa-lg fa-clock-o"></i></span> Scheduled On: {{$game->date_time}}</li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-5 text-center">
                                        <img src="http://localhost/machakos/public/storage/{{$game->image}}" height="150" width="150" class="img-circle img-fluid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="modal fade" id="addTee">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Place Your Tee</h3>
                        <button class="close" type="button" data-dismiss="modal" aria-label="close">
                            <span aria-hidden="true">X</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" action="{{url('viewGame/add')}}" method="post">
                            @csrf
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="client_id" class="col-form-label">Name</label>
                                    <select name="client_id" class="form-control select2" data-placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;">
                                        <optgroup label="Select Your Name">
                                        @foreach($clients as $client)
                                            <option value="{{$client->id}}">{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</option>
                                        @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="tee_id" class="col-form-label">Tee</label>
                                    <select name="tee_id" class="form-control select2" data-placeholder="Select Tee" data-dropdown-css-class="select2-success" style="width: 100%;">
                                        <optgroup label="Tee">
                                            @foreach($tees as $tee)
                                                <option value="{{$tee->id}}">{{$tee->tee}}</option>
                                                @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="game_id" class="col-form-label">Tournament</label>
                                    <select name="game_id" class="form-control">
                                        <option value="{{$game->id}}">{{$game->tournament}}</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="time_id" class="col-form-label">Time</label>
                                    <select name="time_id" class="form-control select2" id="time_id" data-dropdown-css-class="select2-danger" style="width: 100%;">
                                        <optgroup label="Time">
                                            @foreach($times as $time)
                                                <option value="{{$time->id}}">{{$time->name}}</option>
                                                @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone" class="col-form-label">Phone</label>
                                    <input type="text" class="form-control" id="phone" name="phone">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name" class="col-form-label">First Player</label>
                                    <select class="select3" multiple="multiple" name="player1" placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;">
                                        <optgroup label="Select Players">
                                            @foreach($clients as $client)
                                                <option>{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</option>
                                            @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name" class="col-form-label">Second Player</label>
                                    <select class="select3" multiple="multiple" name="player2" placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;">
                                        <optgroup label="Select Players">
                                            @foreach($clients as $client)
                                                <option>{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</option>
                                            @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name" class="col-form-label">Third Player</label>
                                    <select class="select3" multiple="multiple" name="player3" placeholder="Select Player" data-dropdown-css-class="select2-success" style="width: 100%;">
                                        <optgroup label="Select Players">
                                            @foreach($clients as $client)
                                                <option>{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</option>
                                            @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">
                                    <i class="fa fa-close"></i>Close
                                </button>
                                <button type="submit" class="bt btn-success btn-sm">
                                    <i class="fa fa-save"></i>Book Game
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection
