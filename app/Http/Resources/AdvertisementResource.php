<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AdvertisementResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        //return parent::toArray($request);

        return [
            "id" => $this->id,
            "name" => $this->name,
            "type" => $this->type,
            "image" => asset('storage/'. $this->image), 
            "product_id" => $this->product_id,
            "start_date" => $this->start_date,
            "end_date" => $this->end_date,
            "status" => $this->status,
//            "item_type" => $this->item_type,
//            "item_id" => $this->item_id,
//            "created_at" => $this->created_at,
//            "updated_at" => $this->updated_at,
        ];
    }
}
