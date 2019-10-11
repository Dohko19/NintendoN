<?php

namespace App;

use App\ListaCuentas;
use Illuminate\Database\Eloquent\Model;

class ListaBeneficiados extends Model
{
   	protected $fillable = ['correo', 'id_nintendo', 'pagado', 'id_cuenta'];

   	function listacuentas()
   	{
   		return $this->hasOne(ListaCuentas::class);
   	}
}
