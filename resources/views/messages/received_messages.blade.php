@if($received_messages->count() != 0)
@foreach($received_messages as $received_message)
    <div class="col-sm-4 col-md-4">
        <div class="alert-message alert-message-success">
            <h4>
                {{$received_message->subject}}</h4>
            <p>
                {{$received_message->text}}<br>
                <strong> Sent By</strong>. <a href="#">
                    {{$received_message->sender->name}}</a></p>
        </div>
    </div>

@endforeach
{{ $received_messages->links() }}
    @else
    <div class="col-sm-5 col-md-5">
        <div class="alert-message alert-message-success">
            <h4>
                No Received Message</h4>

        </div>
    </div>
@endif