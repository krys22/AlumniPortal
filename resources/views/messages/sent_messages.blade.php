
@if($sent_messages->count() != 0)
@foreach($sent_messages as $sent_message)
    <div class="col-sm-4 col-md-4">
    <div class="alert-message alert-message-success">
        <h4>
            {{$sent_message->subject}}</h4>
        <p>
           {{$sent_message->text}}<br>
            <strong> Sent To
                {{$sent_message->Receiver->name}} </strong>. </p>
    </div>
</div>
        @endforeach
<p>{{ $sent_messages->links() }}</p>
    @else
    <div class="col-sm-5 col-md-5">
        <div class="alert-message alert-message-success">
            <h4>
                No messages sent</h4>

        </div>
    </div>
@endif
