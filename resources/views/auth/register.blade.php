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
        <style>
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
        </style>
    </head>
    <body>
        <div class="container">
            <h1>DropDown Feature</h1>
            <div class="form-group">
                <label for="state">Select your State</label>
                <select name="state" id="state" class="form-control">
                    <option value="">Select State</option>
                    @foreach($states as $key => $value)
                    <option value="{{$key}}">{{$value}}</option>
                    @endforeach
                     </select>    
            </div>
              <div class="form-group">
                <label for="LocalGovernment">Select your LG</label>
                <select name="LocalGovernment" id="LocalGovernment" class="form-control">
                    <option value="">Select State</option>   
                </select>    
            </div>
            <div class="form-group">
                <label for="Ward">Select your Wards</label>
                <select name="Ward" id="Ward" class="form-control">
                <option value="">Select City</option>   
                </select>    
            </div>

            <div class="form-group">
                <label for="PollingUnits">Select your Poll-units</label>
                <select name="PollingUnits" id="PollingUnits" class="form-control">
                    <option value="">Select PollingUnits</option>   
                </select>    
            </div>
        </div>
       <script>
           $(document).ready(function(){
            $('select[name="state"]').on('change',function(){
                var state_id= $(this).val();
                if (state_id ) {
                 $.ajax({
                    url: "{{url('/getLocalGovernments/')}}/"+state_id,
                  type: "GET",
                  dataType: "json",
                  success: function(data){
                    console.log(data);
                    $('select[name="LocalGovernment"]').empty();
                    $.each(data,function(key,value){
                        $('select[name="LocalGovernment"]').append('<option value="'+key+'">'+value+'</option>');
                    });
                  }
                 });
                }else {
                     $('select[name="LocalGovernment"]').empty();
               }
           });
             $('select[name="LocalGovernment"]').on('change',function(){
                var LocalGovernment_id= $(this).val();
                if (LocalGovernment_id) {
                 $.ajax({
                    url: "{{url('/getWards/')}}/"+LocalGovernment_id,
                  type: "GET",
                  dataType: "json",
                  success: function(data){
                    console.log(data);
                    $('select[name="Ward"]').empty();
                    $.each(data,function(key,value){
                        $('select[name="Ward"]').append('<option value="'+key+'">'+value+'</option>');
                    });
                  }
                 });
                }else {
                     $('select[name="Ward"]').empty();
               }
           });
           });
       </script>
    </body>
</html>