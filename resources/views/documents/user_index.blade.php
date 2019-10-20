@extends('layouts.app')

@section('content')
    <h4>Upload Documents for Clearance</h4>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <form method="POST" action="{{route('documents.store.single')}}" enctype="multipart/form-data" >
                    @csrf
                    <div>
                        <p><input type="number" class="form-control" name="stage" id="stage"  placeholder="Enter Stage"/></p>
                    </div>
                    <input type="file" id="input-file-max-fs" name="document" class="form-control-file" data-max-file-size="2M" />
                    <button type="submit" class="btn btn-success">Upload</button>
                </form>
            </div>
        </div>
        <hr>

        <div>
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Stage</th>
                    <th>Submitted</th>
                    <th>Download</th>
                </tr>
                </thead>
                <tbody>
                @foreach($documents as $document)
                <tr>
                    <?php $download = 0;?>
                    <th scope="row">{{$document->stage}}</th>
                    <td>{{$document->name}}</td>
                    <td><?php foreach ($documents_user as $doc){
                        if($doc->stage == $document->stage){
                            $download = 1;
                            echo "Yes";
                        }else{
                            echo "No";
                        }
                        }  ?></td>
                    <td >@if($download == 1)<a href ="" download="{{asset('storage/'.$doc->path)}}">Download</a>@else -- @endif</td>
                </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        </div>
    @endsection