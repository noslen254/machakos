<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFirstTeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('first_tees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('tee_id')->unsigned();
            $table->foreign('tee_id')->references('id')->on('tees')->onUpdate('cascade');
            $table->bigInteger('client_id')->unsigned();
            $table->foreign('client_id')->references('id')->on('clients')->onUpdate('cascade');
            $table->bigInteger('game_id')->unsigned();
            $table->foreign('game_id')->references('id')->on('games')->onUpdate('cascade');
            $table->bigInteger('time_id')->unsigned();
            $table->foreign('time_id')->references('id')->on('times')->onUpdate('cascade');
            $table->string('phone')->nullable();
            $table->string('player1')->nullable();
            $table->string('player2')->nullable();
            $table->string('player3')->nullable();
            $table->timestamps();
            $table->index('tee_id');
            $table->index('client_id');
            $table->index('game_id');
            $table->index('time_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('first_tees');
    }
}
