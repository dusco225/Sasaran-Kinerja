<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Sasaran extends Model
{
    protected $fillable = ['sasaran'];

    public function kinerjas()
    {
        return $this->hasMany(Kinerja::class);
    }
}
