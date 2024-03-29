<?php

namespace App\Http\Controllers;

use App\Permission;
use Illuminate\Http\Request;

class AdminPermissionController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create()
    {
        return view('admin.permission.add');
    }
    // phan quyen de tra ve giao dien
    public function store(Request $request)
    {
        $permission = Permission::create([
            'name' => $request->module_parent,
            'display_name' => $request->module_parent,
            'parent_id' => 0
        ]);
        foreach ($request->module_children as $value) {
            Permission::create([
                'name' => $value,
                'display_name' => $value,
                'parent_id' => $permission->id,
                'key_code' => $request->module_parent . '_' . $value
            ]);
        }
        return redirect()->route('permissions.create');

    }
}
