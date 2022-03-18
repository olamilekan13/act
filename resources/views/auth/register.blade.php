<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


        <!-- Styles -->
        <!-- <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }
            .full-height {
                height: 100vh;
            }
            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }
            .position-ref {
                position: relative;
            }
            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }
            .content {
                text-align: center;
            }
            .title {
                font-size: 84px;
            }
            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }
            .m-b-md {
                margin-bottom: 30px;
            }
        </style> -->
    </head>
    <body>


    <x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ url('/register') }}">
            @csrf

           <div class="mt-4">
                <x-jet-label for="firstname" value="{{ __('Firstname') }}" />
                <x-jet-input id="firstname" class="block mt-1 w-full" type="text" name="firstname" :value="old('firstname')" required autofocus autocomplete="firstname" />
            </div>

          <div class="mt-4">
                <x-jet-label for="middlename" value="{{ __('middlename') }}" />
                <x-jet-input id="middlename" class="block mt-1 w-full" type="text" name="middlename" :value="old('middlename')" required autofocus autocomplete="middlename" />
            </div>


             <div class="mt-4">
                <x-jet-label for="lastname" value="{{ __('Lastname') }}" />
                <x-jet-input id="lastname" class="block mt-1 w-full" type="text" name="lastname" :value="old('lastname')" required autofocus autocomplete="lastname" />
            </div>



              <div class="mt-4">
                <x-jet-label for="phone" value="{{ __('Mobile Number') }}" />
                <x-jet-input id="phone" class="block mt-1 w-full" type="number" name="phone" :value="old('phone')" required autofocus autocomplete="phone" />
            </div>



            
            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>


          <div class="mt-4">
                <x-jet-label for="ward" value="{{ __('Gender') }}" />
                <select id="gender" class="block mt-1 w-full" type="select" name="gender" :value="old('gender')" required>
                    <option value="M">Male</option>
                    <option value="F">Female</option>
                </select>
            </div>




             <div class="mt-4">
                <x-jet-label for="state" value="{{ __('State') }}" />
                <select class="block mt-1 w-full" type="select" name="state" id="state" :value="old('state')" required>
                    <option value="">Select State</option>
                    @foreach( $states as $key => $value)
                    <option value="{{$key}}">{{$value}}</option>
                    @endforeach
                </select>
            </div>


              <div class="mt-4">
                <x-jet-label for="lg" value="{{ __('Local-Government') }}" />
                <select  class="block mt-1 w-full" type="select"name="lg" id="lg" :value="old('lg')" required>
                    <option value="">Select Local-Government</option>  
                </select>
            </div>

              <div class="mt-4">
                <x-jet-label for="ward" value="{{ __('Ward') }}" />
                <select class="block mt-1 w-full" type="select"name="ward" id="ward"  :value="old('ward')" >
                   <option value="">Select Ward</option> 
                   <!-- <option value="M">Mangoro</option>
                    <option value="F">Ikeja</option> -->
                </select>
            </div>

            <div class="mt-4">
                <x-jet-label for="polling-unit" value="{{ __('Polling-unit') }}" />
                <select class="block mt-1 w-full" type="select"name="polling-unit" id="polling-unit" :value="old('polling-unit')" >
                   <!-- <option value="M">Mangoro</option>
                    <option value="F">Ikeja</option> -->
                </select>
            </div>

              


            <div class="mt-4">
                <x-jet-label for="address" value="{{ __('Address') }}" />
                <x-jet-input id="address" class="block mt-1 w-full" type="text" name="address" :value="old('address')" required />
            </div>


               <div class="mt-4">
                <x-jet-label for="validId" value="{{ __('valid Id-Card') }}" />
                <x-jet-input id="validId" class="block mt-1 w-full" type="file" name="validId" :value="old('validId')" required />
            </div>


            <div class="mt-4">
                <x-jet-label for="img" value="{{ __('Your Photo') }}" />
                <x-jet-input id="img" class="block mt-1 w-full" type="file" name="img" :value="old('img')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>

            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('Register') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout> -->






















       <script>
           $(document).ready(function(){
            $('select[name="state"]').on('change',function(){
                var state_id= $(this).val();
                if (state_id ) {    
                 $.ajax({
                    url: "{{url('/getLocalgovernments/')}}/"+state_id,
                  type: "GET",
                  dataType: "json",
                  success: function(data){
                    console.log(data);
                    $('select[name="lg"]').empty();
                    $.each(data,function(key,value){
                        $('select[name="lg"]').append('<option value="'+key+'">'+value+'</option>');
                    });
                  }
                 });
                }else {
                     $('select[name="lg"]').empty();
               }
           });


           $(document).ready(function(){
            $('select[name="lg"]').on('change',function(){
                var LocalGovernment_id= $(this).val();
                if (LocalGovernment_id ) {    
                 $.ajax({
                    url: "{{url('/getWard/')}}/"+LocalGovernment_id,
                  type: "GET",
                  dataType: "json",
                  success: function(data){
                    console.log(data);
                    $('select[name="ward"]').empty();
                    $.each(data,function(key,value){
                        $('select[name="ward"]').append('<option value="'+key+'">'+value+'</option>');
                    });
                  }
                 });
                }else {
                     $('select[name="ward"]').empty();
               }
           });

             });




        //      $('select[name="LocalGovernment"]').on('change',function(){
        //         var LocalGovernment_id= $(this).val();
        //         if (LocalGovernment_id) {
        //          $.ajax({
        //             url: "{{url('/getWards/')}}/"+LocalGovernment_id,
        //           type: "GET",
        //           dataType: "json",
        //           success: function(data){
        //             console.log(data);
        //             $('select[name="Ward"]').empty();
        //             $.each(data,function(key,value){
        //                 $('select[name="Ward"]').append('<option value="'+key+'">'+value+'</option>');
        //             });
        //           }
        //          });
        //         }else {
        //              $('select[name="Ward"]').empty();
        //        }
        //    });

           $('select[name="ward"]').on('change',function(){
                var PollingUnits_id= $(this).val();
                if (PollingUnits_id) {
                 $.ajax({
                    url: "{{url('/getPollingunits/')}}/"+PollingUnits_id,
                  type: "GET",
                  dataType: "json",
                  success: function(data){
                    console.log(data);
                    $('select[name="polling-unit"]').empty();
                    $.each(data,function(key,value){
                        $('select[name="polling-unit"]').append('<option value="'+key+'">'+value+'</option>');
                    });
                  }
                 });
                }else {
                     $('select[name="polling-unit"]').empty();
               }
           });
           });
       </script>

       
    </body>
</html>