@extends('layouts.app')

@section("content")
<div class="container">
	@if(Session::has('message'))
		<div class="alert alert-success">{{ Session::get('message')}}</div>
	@endif
    <div class="panel panel-default">
	  <div class="panel-heading">New Task</div>
		  <div class="panel-body">
		       <form method="POST" action='{{ url("/create") }}'>
		       {{ csrf_field() }}
		       		<div class="form-group row">
		       			<div class="col-md-2">
		       				<label class="control-label pull-right">Task</label>
		       			</div>
		       			<div class="col-md-3">
			       			<input type="text" name="task_name" id="task_name" class="form-control">
		       			</div>
		       			<div class="col-md-7">
			       			<input type="text" name="task_desc" id="task_desc" class="form-control">
		       			</div>
		       		</div>
		       		<div class="row">
		       			<div class="col-md-offset-2 col-md-3">
		       			@if(Auth::user() && Auth::user()->role == 'admin')
		       			<button type="submit" class="btn btn-default">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add New
						</button>
						@endif
		       			</div>
		       		</div>
		       </form>
		  </div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">Current Tasks</div>
		<div class="container-fluid">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
					@foreach($tasks as $task)
					<td>{{ $task->task_name }}</td>
					<td>{{ $task->task_desc }}</td>
					<td><a href='{{ url("/delete/$task->id")}}'>
						@if(Auth::user() && Auth::user()->role == 'admin')
						<button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
						@endif
						</a>
					</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
</div>
@endsection

@section("title")
	Task List
@endsection 

