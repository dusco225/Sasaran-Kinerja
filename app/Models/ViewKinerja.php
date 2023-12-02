<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ViewKinerja extends Model
{
    protected $table = 'vw_kinerja';
    // protected $fillable = ['indikator_kinerja', 'sasaran'];

    // public function capaianKinerja()
    // {
    //     return $this->belongsTo(KinerjaController::class);
    // }
}


// class ViewKinerja extends Model
// {
    // protected $table = 'vw_kinerja'; // Sesuaikan dengan nama tabel yang sesuai

    // Definisikan atribut-atribut yang dapat diisi
    // protected $fillable = ['atribut1', 'atribut2', 'atribut3'];

    // Jika Anda memiliki relasi dengan model lain, Anda bisa mendefinisikannya di sini
    // Misalnya, jika memiliki relasi dengan model Sasaran:
    // public function sasaran()
    // {
    //     return $this->belongsTo(Sasaran::class);
    // }
// }
