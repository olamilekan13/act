<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateState extends Migration
{
    public function up()
    {
        
        Schema::create('States', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');           
            $table->timestamps();
        });
        Schema::create('local-governments', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('state_id');            
            $table->timestamps();
        });

        Schema::create('ward', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('state_id');            
            $table->timestamps();
        });

        Schema::create('polling-units', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('ward_id');            
            $table->timestamps();
        });


        Schema::create('lcdas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('lg_id');            
            $table->timestamps();
        });

    }
   public function down()
    {
       Schema::drop('States');
       Schema::drop('local-governments');
       Schema::drop('ward');
       Schema::drop('polling-units');
       Schema::drop('lcdas');
    }
}

























// return new class extends Migration
// {
//     /**
//      * Run the migrations.
//      *
//      * @return void
//      */
//     public function up()
//     {
//         //
//     }

//     /**
//      * Reverse the migrations.
//      *
//      * @return void
//      */
//     public function down()
//     {
//         //
//     }
// };
