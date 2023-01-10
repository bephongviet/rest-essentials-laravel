<?php 
namespace App\Http\Controllers; 

use App\Models\User; 
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Validator; 

class UserController extends Controller {

    public function register(Request $request) { 
        $validator = Validator::make($request->all(), User::$registerRules);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        //$user->sendEmailVerificationNotification();

        return response()->json(['message' => 'Successfully registered'], 201);
    }

    public function verify(Request $request)
    {
        $user = User::find($request->id);
        $user->email_verified_at = now();
        $user->save();

        return response()->json(['message' => 'Successfully verified'], 200);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $credentials = $request->only(['email', 'password']);
        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            if (!$user->email_verified_at) {
                return response()->json(['errors' => 'Email not verified'], 401);
            }
            $token = $user->createToken('Laravel Password Grant Client')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['errors' => 'Email or password is incorrect'], 401);
        }
    }


    public function changePassword(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'password' => 'required|string|min:6',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Check if the request has a valid Bearer token
        if ($request->bearerToken()) {
            // Get the authenticated user
            $user = $request->user();
            // Update the user's password
            $user->password = bcrypt($request->password);
            $user->save();
            return response()->json(['message' => 'Password changed successfully'], 200);
        } else {
            // Return error if the request doesn't have a valid Bearer token
            return response()->json(['error' => 'Unauthorized'], 401);
        }
    }

    public function getUser($id)
    {
        // Lấy thông tin user theo id
        $user = User::find($id);
        if (! $user) {
            return response()->json(['error' => 'User not found'], 404);
        }

        return response()->json($user, 200);
    }


}
