<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class OrdersCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'order' => OrderResource::collection($this->collection),
            'meta' => ['orders_count' => $this->collection->count()],
        ];

        return parent::toArray($request);
    }
}
