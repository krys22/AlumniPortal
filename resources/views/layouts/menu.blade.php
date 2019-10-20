<li class="{{ Request::is('users*') ? 'active' : '' }}">
    <!--a href="{!! route('users.index') !!}"><i class="fa fa-edit"></i><span>Users</span></a-->
        <a href="{!! route('chats.index') !!}"><i class="fa fa-envelope"></i><span>Chats</span></a>

</li>
<li class="{{ Request::is('users*') ? 'active' : '' }}">
    <a href="{!! route('messages.index') !!}"><i class="fa fa-envelope-square"></i><span>Messages</span></a>
</li>
<li class="{{ Request::is('users*') ? 'active' : '' }}">
    <a href="{!! route('documents.index') !!}"><i class="fa fa-sort-numeric-asc"></i><span>Clearance Stage</span></a>
</li>



