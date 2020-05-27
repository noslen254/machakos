@extends('layouts.admin')
@section('title','Games Booked')
@section('content')
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="content-header">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        @isset($category)
                            <h1 class="m-0 text-dark">{{$category['tournament']}} <span class="badge badge-success badge-pill">{{count($tees)}}</span></h1>
                            @else
                            <h1 class="m-0 text-dark">Booked Games</h1>
                            @endif
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{url('/home')}}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Booked Games</li>
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
                                    @isset($category)
                                        <a href="{{url('bookings')}}" class="btn bg-pink btn-sm">
                                            <i class="fa fa-file-excel-o"></i>Export Excel
                                        </a>
                                    @else
                                        <a href="{{url('tournamentExcel')}}" class="btn bg-pink btn-sm">
                                            <i class="fa fa-file-excel-o"></i>Export Excel
                                        </a>
                                        <a href="{{url('tournamentCSV')}}" class="btn bg-white btn-sm">
                                            <i class="fa fa-file-o"></i>Export CSV
                                        </a>
                                    @endif
                                    <form class="form-inline ml-1 float-sm-right bg-success" method="post" action="{{url('/tournamentSearch')}}" style="border-radius: 5px;">
                                        @csrf
                                        <div class="input-group input-group-sm">
                                            <input class="form-control form-control-navbar input-sm" name="search" type="search" placeholder="Search" aria-label="Search">
                                            <div class="input-group-append">
                                                <button class="btn btn-navbar" type="submit">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-inline ml-1 float-sm-right bg-success" method="post" action="{{url('/tournamentSort')}}" style="border-radius: 5px;">
                                        @csrf
                                        <div class="input-group input-group-sm">
                                            <select class="form-control form-control-navbar input-sm" name="filter" required>
                                                @if(isset($games))
                                                    @foreach($games as $cg)
                                                        <option value="{{$cg->id}}">{{$cg->tournament}}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                            <div class="input-group-append">
                                                <button class="btn btn-navbar" type="submit">
                                                    <i class="fa fa-filter"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card">
                                    <div class="card-body">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Tournament</th>
                                                    <th>Tee</th>
                                                    <th>Member</th>
                                                    <th>Phone</th>
                                                    <th>Time</th>
                                                    <th>Players</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php $count=1;?>
                                            @foreach($tees as $tee)
                                                <tr>
                                                    <td>{{$count++}}</td>
                                                    <td>{{$tee->game->tournament}}</td>
                                                    <td>{{$tee->tee->tee}}</td>
                                                    <td>{{$tee->client->firstName}} {{$tee->client->middleName}} {{$tee->client->lastName}}</td>
                                                    <td>{{$tee->phone}}</td>
                                                    <td>{{$tee->time->name}}</td>
                                                    <td>{{$tee->player1}}<br>{{$tee->player2}}<br>{{$tee->player3}}</td>
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
        </section>
    </div>
    @endsection
