@if($admin_messages->count() != 0)
@foreach($admin_messages as $admin_message)
    <div class="col-sm-4 col-md-4">
        <div class="alert-message alert-message-success">
            <h4>
                {{$admin_message->subject}}</h4>
            <p>
                {{$admin_message->text}}<br>
                <strong> Sent By</strong>. <a href="#">
                    Admin</a></p>
        </div>
    </div>
@endforeach
<p>{{ $admin_messages->links() }}</p>
    @else
    <div class="col-sm-5 col-md-5">
        <div class="alert-message alert-message-success">
            <h4>
                No message from Admin</h4>

        </div>
    </div>
    @endif
