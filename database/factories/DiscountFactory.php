<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Discount;
use Faker\Generator as Faker;

$factory->define(Discount::class, function (Faker $faker) {
    return [
        // 'code' => $faker->words($nb = 3, $asText = false),
        'name' => $faker->words($nb = 3, $asText = false),
        // 'type' => $faker->words($nb = 3, $asText = false),
        // 'type_todiscount' => $faker->words($nb = 3, $asText = false),
        // 'quantity' => $faker->randomFloat($nbMaxDecimals = 2),
        // 'max_todiscount' => $faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = NULL),
        // 'start_date' => $faker->dateTimeThisYear(),
        // 'end_date' => $faker->dateTimeThisYear(),
        // 'status' => $faker->words($nb = 3, $asText = false)
    ];
});
