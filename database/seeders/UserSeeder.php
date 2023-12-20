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
            "jabatan"=>"dekan",
            "email"=> "dekan@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator",
            "jabatan"=>"wakildekan",
            "email"=> "wd1@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Wakil Dekan",
            "jabatan"=>"wakildekan",
            "email"=> "wd2@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Wakil Dekan",
            "jabatan"=>"wakildekan",
            "email"=> "wd3@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Admin",
            "jabatan"=>"admin",
            "email"=> "admin@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Matematika",
            "jabatan"=>"operator",
            "email"=> "op701@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Biologi",
            "jabatan"=> "operator",
            "email"=> "op702@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Fisika",
            "jabatan"=> "operator",
            "email"=> "op703@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Kimia",
            "jabatan"=>"operator",
            "email"=> "op704@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Informatika",
            "jabatan"=>"operator",
            "email"=> "op705@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Elektro",
            "jabatan"=>"operator",
            "email"=> "op706@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
        User::create([
            "name"=> "Operator Agroteknologi",
            "jabatan"=>"operator",
            "email"=> "op707@gmail.com",
            "password"=> bcrypt("12345"),
            "remember_token"=> str::random(60),
        ]);
    }
}
