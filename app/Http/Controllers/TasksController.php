<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Task;

class TasksController extends Controller
{
	 // public function __construct()
  //   {
  //       $this->middleware('auth');
  //   }

	function deleteTask($id) {
		$task_tbd = Task::find($id);
		$task_tbd->delete();

		return back();
	}

    function addTask(Request $request) {
    	$new_task = new Task();
    	$new_task->task_name = $request->task_name;
    	$new_task->task_desc = $request->task_desc;
    	$new_task->save();

    	$request->session()->flash('message','Task Added Successfully!');

    	return back();
    }

    function showTasks() {
    	$tasks = Task::latest()->get();
    	// $tasks = Task::all();

    	return view('tasks/task_list', compact('tasks'));
    }
}
