<?php

namespace App\Http\Controllers;

use App\Model\DocumentUser;
use App\Model\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DocumentController extends Controller
{
    //

    public function index(){

        if(\Auth::User()->email == 'admin@gmail.com'){
            $documents = Document::groupBy('stage')->latest()->get();
            return view('documents.admin_index',compact('documents'));
        }else{
            $documents = Document::get();
            $documents_user = DocumentUser::where('user_id',\Auth::user()->id)->get();
            return view('documents.user_index',compact('documents','documents_user'));
        }

    }

    public function store(Request $request){
        $hasFile = $request->hasFile('document');

        if($hasFile){
            $path = $request->file('document')->store('documents');
            $document = new Document();
            $document->amount = $request->amount;
            $document->path = $path;
            $document->stage = $request->stage;
            $document->name = $request->name;
            $document->image = $request->file('document')->getFilename();
            $document->save();

        }
        $request->session()->flash('status', 'Stage was created');

        return redirect()->back();
    }

    public function storeSingle(Request $request){
        $hasFile = $request->hasFile('document');

        if($hasFile){
            $path = $request->file('document')->store('documents');
            $document = new DocumentUser();
            $document->user_id = \Auth::user()->id;
            $document->path = $path;
            $document->stage = $request->stage;
            $document->image = $request->file('document')->getFilename();
            $document->save();

        }
        $request->session()->flash('status', 'Stage was created');

        return redirect()->back();
    }

}
