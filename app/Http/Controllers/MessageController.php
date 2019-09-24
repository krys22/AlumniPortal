<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use PHPUnit\Framework\Exception;
use App\User;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    //
    public function index(){

        $sent_messages = Message::where('sender_id', Auth::user()->id)->latest()->paginate(2);
        $received_messages = Message::where('receiver_id', Auth::user()->id)->latest()->paginate(2);
        $admin_messages = Message::where('sender_id', 3)->latest()->paginate(2);

        return view('messages.index', [

            'sent_messages' => $sent_messages,
            'received_messages' => $received_messages,
            'admin_messages' => $admin_messages
        ]);
    }

    public function send_message(Request $request, Message $message){
        try{
            if(User::where('email', $request->input('receiver'))->count() < 1){
                return array([
                    'success' => 0,
                    'message' => 'This receiver doesn\'t exist'
                ]);
            }

            $message->receiver_id = User::where('email', $request->input('receiver'))->value('id');
            $message->sender_id = Auth::user()->id;
            $message->subject = $request->input('subject');
            $message->text = $request->input('message');
            if($message->save()){
                return array([
                    'success' => 1,
                    'message' => 'Message has been sent'
                ]);
            }
        }catch (Exception $e){

        }
    }
}
