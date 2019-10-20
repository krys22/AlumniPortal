@extends('layouts.app')

@section('content')
<div class="container">
    <h4>Messages from Administration</h4>
    @foreach($admin_messages as $message)
        <div>
            <h1>{{$message->subject}}</h1>
            <h3>{{$message->text}}</h3>

        </div>
        @endforeach
</div>
@endsection
