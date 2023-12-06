<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kinerja extends Model
{
    protected $fillable = ['sasaran_id', 'kinerja'];

    public function indikator()
    {
        return $this->belongsTo(KinerjaController::class);
    }
}