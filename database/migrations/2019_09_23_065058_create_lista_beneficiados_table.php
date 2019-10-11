<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListaBeneficiadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lista_beneficiados', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('correo');
            $table->string('id_nintendo');
            $table->string('pagado');
            $table->string('id_cuenta');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lista_beneficiados');
    }
}
