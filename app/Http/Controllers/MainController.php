<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use App\Models\User;


use App\Models\State;
use App\Models\LocalGovernment;
use App\Models\Ward;
use App\Models\PollingUnit;

class MainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function State(){
    	$states = State::all()->pluck('state_name','id');
    	return view('auth/register',compact('states'));
    }

     public function getLocalGovernments($id){
    	$localgovernments= LocalGovernment::where('state_id',$id)->pluck('LocalGovernment_name','id');
        return json_encode($localgovernments);
    }


    
    public function getWards($id){
    	$wards= Ward::where('LocalGovernment_id',$id)->pluck('ward_name','id');
        return json_encode($wards);
    }



    
    public function getPollingUnits($id){
    	$pollingunits= PollingUnit::where('ward_id',$id)->pluck('PollingUnits_name','id');
        return json_encode($pollingunits);
    }




    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
