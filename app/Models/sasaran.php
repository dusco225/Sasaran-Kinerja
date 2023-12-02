<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sasaran extends Model
{
    protected $fillable = ['sasaran'];

    public function sasaran()
    {
        return $this->belongsTo(SasaranController::class);
    }
}
