<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class User
 * @package App\Models
 * @version September 9, 2019, 5:20 pm UTC
 *
 * @property string name
 * @property string email
 * @property string year_of_graduation
 * @property string department
 * @property boolean indigene
 * @property string gender
 * @property string thumbnail
 * @property boolean stage
 * @property string|\Carbon\Carbon email_verified_at
 * @property string password
 * @property string remember_token
 * @property integer role_id
 */
class User extends Model
{
    use SoftDeletes;

    public $table = 'users';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'email',
        'year_of_graduation',
        'department',
        'indigene',
        'gender',
        'thumbnail',
        'stage',
        'email_verified_at',
        'password',
        'remember_token',
        'role_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'email' => 'string',
        'year_of_graduation' => 'date',
        'department' => 'string',
        'indigene' => 'boolean',
        'gender' => 'string',
        'thumbnail' => 'string',
        'stage' => 'boolean',
        'email_verified_at' => 'datetime',
        'password' => 'string',
        'remember_token' => 'string',
        'role_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required',
        'email' => 'required',
        'year_of_graduation' => 'required',
        'department' => 'required',
        'indigene' => 'required',
        'gender' => 'required',
        'password' => 'required',
        'role_id' => 'required'
    ];

    
}
