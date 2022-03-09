<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        Validator::make($input, [
            'firstname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            // 'phone' => ['bail' ,'required', 'string', 'phone', 'max:11', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['accepted', 'required'] : '',
        ])->validate();

        return User::create([
            'firstname' => $input['firstname'],
            'middlename' => $input['middlename'],
            'lastname' => $input['lastname'],
            'address' => $input['address'],
            'phone' => $input['phone'],
             'gender' => $input['gender'],
            'state' => $input['state'],
            'lg' => $input['lg'],
            'ward' => $input['ward'],
            'polling-unit' => $input['polling-unit'],
            'validId' => $input['validId'],
             'img' => $input['img'],
            'email' => $input['email'],

            'password' => Hash::make($input['password']),
        ]);
    }
}
