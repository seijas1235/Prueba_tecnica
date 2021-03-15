<?php

namespace App\Http\Resources;

use App\IncidentType;
use App\IncidentStatus;
use Illuminate\Http\Resources\Json\JsonResource;

class IncidentResource extends JsonResource
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
            "user_id" => $this->user_id,
            "description" => $this->description,
            "incident_type_id" => new IncidentTypeResource(IncidentType::find($this->incident_type_id)),
            "store_id" => $this->store_id,
            "purchase_id" => $this->purchase_id,
            "incident_status_id" => new IncidentStatusResource(IncidentStatus::find($this->incident_status_id)),
//            "created_at" => $this->created_at,
//            "updated_at" => $this->updated_at,
        ];
    }
}
