<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kinerja extends Model
{
    protected $fillable = ['indikator_kinerja', 'sasaran'];

    public function capaianKinerja()
    {
        return $this->belongsTo(KinerjaController::class);
    }
}