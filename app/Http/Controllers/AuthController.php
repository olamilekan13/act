<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Symfony\Component\HttpFoundation\Response;
 


class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        // $this->middleware('auth:api', ['except' => ['login', 'register']]);
        return response()->json([ 'valid' => auth()->check() ]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
    	$validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        if (! $token = auth()->attempt($validator->validated())) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->createNewToken($token);
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        try{
        $validator = Validator::make($request->all(), [
            'fullname' => 'required|string|between:2,100',
            'address' => 'required|string|between:2,100',
            'phone' => 'required|string',
            'gender' => 'required|string',
            'state' => 'required|string',
            'lg' => 'required|string',
            'ward' => 'required|string',
            'pollingUnit' => 'required|string',
            'validId' => 'required|string',
            'img' => 'image|mimes:jpeg,png,jpg,gif,svg',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|confirmed|min:6',
            'usertype'=> ''
        ]);
        
        //  if (Auth::user()->usertype == '1')
        //  {
        //      return view('login');

        //  }

        //  else {

        

        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
                    $validator->validated(),
                    ['password' => bcrypt($request->password)]
                ));

        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], 201);
    }
    catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }
    }
 
    // }
    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */

    public function logout() {

      try{

      
        auth()->logout();

        return response()->json(['message' => 'User successfully signed out']);
    }

catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }
}
    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        try{
        return $this->createNewToken(auth()->refresh());
        }
        catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() 
{

        try{

        
        //  $this->validate($request, ['token' => 'required']);
  
        // $user = JWTAuth::authenticate($request->token);
       return response()->json(auth()->user());
        
    
    }catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }
}

    public function show($id){

        try{

        
        $user = User::find($id);
        // if(is_null($user)){

        //     return response()->json([
        //     "success" => false,
        //     "message" => "product  not shown Succesfully",
        //     "data" => "$user"
        // ]);


        // }

        return response()->json([
            "success" => true,
            "message" => "product shown Succesfully",
            "data" => "$user"
        ]);
    }catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }

    }


    




    public function update(Request $request, $id)
  {

    try{
        //find post
        $user = User::find($request->id);
        if (!$user){
            return response()->json(['message'=> 'not found'
            ],404);
        }


        $user->phone=$request->phone;
         $user->address=$request->address;
        $user->save();
        // Return Json Response
        return response()->json([
            'message' => "Post successfully updated."
        ],200);
    } catch (\Exception $e) {
        // Return Json Response
        return response()->json([
            'message' => $e->getMessage()
        ],500);
    }



  }

//   

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ]);
    }

}

