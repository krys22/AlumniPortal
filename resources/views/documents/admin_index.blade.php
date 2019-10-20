@extends('layouts.app')

@section('content')
    <h4>Upload Documents for Clearance</h4>
    <div class="container">
        <div class="row">
        <div class="col-md-3">
        <form method="POST" action="{{route('documents.store')}}" enctype="multipart/form-data" >
            @csrf

            <div>
                <p><input type="number" class="form-control" name="stage" id="stage"  placeholder="Enter Stage"/></p>
            </div>
            <div>
                <p><input type="number" class="form-control" name="amount" id="amt"  placeholder="Enter Amount"/></p>
            </div>
            <div>
                <p><input type="text" class="form-control" name="name" id="name"  placeholder="Enter Title"/></p>
            </div>
            <input type="file" id="input-file-max-fs" name="document" class="form-control-file" data-max-file-size="2M" />
            <button type="submit" class="btn btn-success">Upload</button>

        </form>
    </div>
        </div>
    <hr>

    <h4>Documents For Clearance</h4>
    @foreach($documents as $document)
    <div class="col-md-4">
        <img src="{{asset('storage/'.$document->path)}}" height="30" width="30">
        <h6>{{$document->name}}</h6>
        <h6>Stage {{$document->stage}}</h6>
        <h6>NGN {{number_format($document->amount)}}.00</h6>
    </div>
    @endforeach
    @endsection
    </div>