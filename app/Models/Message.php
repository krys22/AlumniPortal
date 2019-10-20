<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    //
    protected $table = "personal_messages";

    public function Receiver(){
       return $this->belongsTo('App\User', 'receiver_id');
    }

    public function sender(){
        return $this->belongsTo('App\User', 'sender_id');
    }
}
