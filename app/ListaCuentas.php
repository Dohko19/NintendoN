<?php

namespace App;

use App\ListaBeneficiados;
use Illuminate\Database\Eloquent\Model;

class ListaCuentas extends Model
{
     protected $fillable = ['cuentas', 'correo', 'password', 'status'];

     function listabeneficiados()
     {
     	return $this->belongsToMany(ListaBeneficiados::class);
     }
}
