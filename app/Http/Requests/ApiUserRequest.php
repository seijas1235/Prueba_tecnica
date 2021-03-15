<?php

namespace App\Http\Requests;

use Illuminate\Http\JsonResponse;
use Illuminate\Foundation\Http\FormRequest;

class ApiUserRequest extends FormRequest
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
            'name' => 'required|string',
            'lastname' => 'required|string',
            'email' => 'required|unique:users|email',
            'phone' => 'required|unique:users|numeric',
            'password' => 'required|string'
        ];
    }
    public function messages()
    {
        return [
            
            'phone.unique' => 'El número de teléfono ya ha sido tomado'
        ];
    }

    protected function failedValidation(\Illuminate\Contracts\Validation\Validator $validator)
    {
        $response = new JsonResponse([
            "status" => "error",
            "code" => "422",
            "msg" => $validator->errors()
            ], 422);
        throw new \Illuminate\Validation\ValidationException($validator, $response);
    }
}
