<?php

use App\User;
use App\Supplier;
use Illuminate\Database\Seeder;

use Faker\Factory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User();
        $user->name = "Prueba Tecnica";
        $user->email = "test1@mail.com";
        $user->password = bcrypt("test");
        $user->save();
    }
}
