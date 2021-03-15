<?php

namespace App\Http\Resources;

use App\Brand;
use App\Category;
use App\ProductStatus;
use App\Http\Resources\Brand as BrandResource;
use App\Http\Resources\Category as CategoryResource;
use App\Http\Resources\ProductStatus as ProductStatusResource;
use Illuminate\Http\Resources\Json\JsonResource;

class Product extends JsonResource
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
            "number_id" => $this->number_id,
            "name" => $this->name,
            "display_name" => $this->display_name,
            "size" => $this->size,
            "description" => $this->description,
            "brand_id" => new BrandResource(Brand::find($this->brand_id)),
            "category_id" => new CategoryResource(Category::find($this->category_id)),
            "product_status_id" => new ProductStatusResource(ProductStatus::find($this->product_status_id)),
            "supplier_id" => $this->supplier_id,
        ];
    }
}
