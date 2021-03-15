<?php

namespace App\Http\Resources;

use App\OrderDetail;
use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
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
            "user_id" => $this->user_id,
            "order_date" => $this->order_date,
            "order_total" => $this->order_total,
            "order_code" => $this->order_code,
            "store_id" => $this->store_id,
            "order_status_id" => $this->order_status_id,
            "pickup_status_id" => $this->pickup_status_id,
            "created_at" => $this->created_at,
            "updated_at" => $this->updated_at,
            "order_details" => new OrderDetailsCollection(OrderDetail::where("order_id", "=", $this->id)->get()),
        ];
    }
}
