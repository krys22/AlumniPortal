<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Email Field -->
<div class="form-group col-sm-6">
    {!! Form::label('email', 'Email:') !!}
    {!! Form::email('email', null, ['class' => 'form-control']) !!}
</div>

<!-- Year Of Graduation Field -->
<div class="form-group col-sm-6">
    {!! Form::label('year_of_graduation', 'Year Of Graduation:') !!}
    {!! Form::date('year_of_graduation', null, ['class' => 'form-control','id'=>'year_of_graduation']) !!}
</div>

@section('scripts')
    <script type="text/javascript">
        $('#year_of_graduation').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: false
        })
    </script>
@endsection

<!-- Department Field -->
<div class="form-group col-sm-6">
    {!! Form::label('department', 'Department:') !!}
    {!! Form::text('department', null, ['class' => 'form-control']) !!}
</div>

<!-- Indigene Field -->
<div class="form-group col-sm-6">
    {!! Form::label('indigene', 'Indigene:') !!}
    <label class="checkbox-inline">
        {!! Form::hidden('indigene', 0) !!}
        {!! Form::checkbox('indigene', '1', null) !!} 1
    </label>
</div>

<!-- Gender Field -->
<div class="form-group col-sm-6">
    {!! Form::label('gender', 'Gender:') !!}
    {!! Form::text('gender', null, ['class' => 'form-control']) !!}
</div>

<!-- Thumbnail Field -->
<div class="form-group col-sm-6">
    {!! Form::label('thumbnail', 'Thumbnail:') !!}
    {!! Form::text('thumbnail', null, ['class' => 'form-control']) !!}
</div>

<!-- Stage Field -->
<div class="form-group col-sm-6">
    {!! Form::label('stage', 'Stage:') !!}
    <label class="checkbox-inline">
        {!! Form::hidden('stage', 0) !!}
        {!! Form::checkbox('stage', '1', null) !!} 1
    </label>
</div>

<!-- Email Verified At Field -->
<div class="form-group col-sm-6">
    {!! Form::label('email_verified_at', 'Email Verified At:') !!}
    {!! Form::date('email_verified_at', null, ['class' => 'form-control','id'=>'email_verified_at']) !!}
</div>

@section('scripts')
    <script type="text/javascript">
        $('#email_verified_at').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: false
        })
    </script>
@endsection

<!-- Password Field -->
<div class="form-group col-sm-6">
    {!! Form::label('password', 'Password:') !!}
    {!! Form::password('password', ['class' => 'form-control']) !!}
</div>

<!-- Remember Token Field -->
<div class="form-group col-sm-6">
    {!! Form::label('remember_token', 'Remember Token:') !!}
    {!! Form::text('remember_token', null, ['class' => 'form-control']) !!}
</div>

<!-- Role Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('role_id', 'Role Id:') !!}
    {!! Form::number('role_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('users.index') !!}" class="btn btn-default">Cancel</a>
</div>
