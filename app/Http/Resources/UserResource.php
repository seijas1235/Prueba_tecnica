<?php

namespace App\Http\Resources;

use App\UserDetail;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
//        return parent::toArray($request);

        return [

            "id" => $this->id,
            "name" => $this->name,
            "email" => $this->email,
            "position" => $this->position,
            "phone" => $this->phone,
//            "email_verified_at" => $this->email_verified_at,
//            "created_at" => $this->created_at,
//            "updated_at" => $this->updated_at,
//            "deleted_at" => $this->deleted_at,
            "last_activity" => $this->last_activity,
            "user_status_id" => $this->user_status_id,
            "supplier_id" => $this->supplier_id,
            "avatar" => asset('storage/'.$this->avatar),
            "details" => new UserDetailResource(UserDetail::where("user_id", "=", $this->id)->first()),
        ];
    }
}
