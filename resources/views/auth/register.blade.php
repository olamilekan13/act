<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('register') }}">
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
                <select id="state" class="block mt-1 w-full" type="select" name="state" :value="old('state')" required>
                    <option value="M">abia</option>
                    <option value="F">adamawa</option>
                </select>
            </div>


              <div class="mt-4">
                <x-jet-label for="lg" value="{{ __('Local-Government') }}" />
                <select id="lg" class="block mt-1 w-full" type="select" name="lg" :value="old('lg')" required>
                    <option value="M">Ikeja</option>
                    <option value="F">agege</option>
                </select>
            </div>

              <div class="mt-4">
                <x-jet-label for="ward" value="{{ __('Ward') }}" />
                <select id="ward" class="block mt-1 w-full" type="select" name="ward" :value="old('ward')" required>
                    <option value="M">ijaiye</option>
                    <option value="F">ikeja</option>
                </select>
            </div>

            <div class="mt-4">
                <x-jet-label for="polling-unit" value="{{ __('Polling-unit') }}" />
                <select id="polling-unit" class="block mt-1 w-full" type="select" name="polling-unit" :value="old('polling-unit')" required>
                    <option value="M">Male</option>
                    <option value="F">Female</option>
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
</x-guest-layout>
