@extends('layouts.newUser')

@section('content')



<!-- Content Header (Page header) -->
<section class="content-header">
<h1>Message</h1>
</section>


<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-6"></div>
    </div>

<div class="row">
<div class="col-md-12">
<!-- Default box -->
<div class="box box-primary">
<div class="box-header with-border hidden">
    <h3 class="box-title hidden"></h3>

    <div class="box-tools pull-right">
        
    </div>
</div>
<div class="box-body">

@if(count($errors)>0)
@foreach($errors->all() as $error)
<div class="alert alert-danger">{{$error}}</div>
@endforeach
@endif
@if(session('response'))
<div class="alert alert-success">{{session('response')}}</div>
@endif
@if(session('success'))
<div class="alert alert-success">{{session('success')}}</div>
@endif


<div class="table-responsive m-t-10" style="min-height: 400px;padding-bottom: 20px;">
<table  class="table table-hover table-striped table-condensed dataTableBuilder" id="PagesDataTable"
        style="width:100%;">

<section id="main-content">
 <section class="wrapper">
   <!-- page start-->
   <div class="row mt">
     <div class="col-sm-12">
       <section class="panel">
         <div class="panel-body ">
           <div class="mail-header row">
             <div class="col-md-8">
                @foreach ($users as $user)
               <h4 class="pull-left"> Subject: {{$user->subject}}</h4>
               <br/>
             </div>
             <div class="col-md-4" style="padding-left:150px;">
               <div class="compose-btn pull-right">
                 <a href="{{ url('/newRedirect') }}" class="btn btn-sm btn-theme">
                 	<i class="fa fa-reply"></i> Back
                 </a>
                 <button class="btn  btn-sm tooltips" data-original-title="Print" type="button" data-toggle="tooltip" data-placement="top" title="">
                 	<i class="fa fa-print"></i>
                 </button>
                 <a href="#">
                 	<button class="btn btn-sm tooltips" data-original-title="Trash"
                 	        data-toggle="tooltip" data-placement="top" title="">
                 	        <i class="fa fa-trash-o"></i>
                 	</button>
                 </a>
               </div>
             </div>
           </div>

           <div class="mail-sender">
             <div class="row">
               <div class="col-md-8">
                 <strong>From: </strong>
                 {{$user->from}}
                 <br/>
               </div>
               <div class="col-md-3">
                 <p class="date"> Today</p>
               </div>
             </div>
           </div>
           <div class="view-mail">
             <p>{!!$user->message!!}</p>
           </div>
           <div class="compose-btn pull-left">
             <a href="{{ url('/newRedirect') }}" class="btn btn-sm btn-theme">
             	<i class="fa fa-reply"></i> Back
             </a>
             <button class="btn btn-sm ">
             	<i class="fa fa-arrow-right"></i> Forward
             </button>
             <button class="btn  btn-sm tooltips" data-original-title="Print" type="button"
                     data-toggle="tooltip" data-placement="top" title="">
                     <i class="fa fa-print"></i>
             </button>
             <a href="#">
             	<button class="btn btn-sm tooltips" data-original-title="Trash"
             	        data-toggle="tooltip" data-placement="top" title="">
             	        <i class="fa fa-trash-o"></i>
             	</button>
             </a>
           </div>
         </div>
       </section>
       @endforeach
     </div>
   </div>
 </section>
 <!-- /wrapper -->
</section>
</table>
</div>
</div>
<!-- /.box-body -->
<div class="box-footer hidden"></div>
<!-- /.box-footer-->
</div>
</div>
</div>
</section>
@endsection