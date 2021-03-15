<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Laminas\Diactoros\Response\JsonResponse;

class ValidarUserEdit extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'address' => 'required',
            'email'    => 'required|email|unique:users',
            'phone' => 'required|unique:users',
            'gender' => 'required',
            'lastname' => 'required'
        ];
    }
    protected function failedValidation(\Illuminate\Contracts\Validation\Validator $validator)
    {
        $response = new JsonResponse([
            "status" => "error",
            "code" => "422",
            "msg" => $validator->errors()
            ]);
        throw new \Illuminate\Validation\ValidationException($validator, $response);
    }
}
