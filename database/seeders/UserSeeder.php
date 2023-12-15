<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::truncate();
        User::create([
            "name"=> "Dekan",
            "level"=>"user",
            "email"=> "dekan@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator",
            "level"=>"admin",
            "email"=> "operator@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Wakil Dekan",
            "level"=>"admin",
            "email"=> "wd@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Admin",
            "level"=>"admin",
            "email"=> "admin@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Kajur",
            "level"=>"admin",
            "email"=> "kajur@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
    }
}
