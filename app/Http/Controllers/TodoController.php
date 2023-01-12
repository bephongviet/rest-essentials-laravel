<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Todo;

class TodoController extends Controller
{
    public function create(Request $request) {
        $todo = new Todo;
        $todo->name = $request->name;
        $todo->status = $request->status;
        $todo->save();
        return response()->json(
            [
                'message' => 'Successfully added.',
                'todo' => $todo
            ], 201);
    }

    public function list() {
        $todos = Todo::get();
        return response()->json($todos,200);
    }
}
