<li class="{{ Request::is('users*') ? 'active' : '' }}">
    <a href="{!! route('users.index') !!}"><i class="fa fa-edit"></i><span>Users</span></a>
    <a href="{!! route('chats.index') !!}"><i class="fa fa-edit"></i><span>Chats</span></a>
</li>

