<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Capaian extends Model
{
    protected $fillable = ['user_id','sasaran_id', 'kinerja_id','tahunan','I','II','III','IV'];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
        
    public function sasaran()
    {
        return $this->belongsTo(Sasaran::class, 'sasaran_id');
    }
    
    public function kinerja()
    {
        return $this->belongsTo(Kinerja::class, 'kinerja_id');
    }
    
  
}
