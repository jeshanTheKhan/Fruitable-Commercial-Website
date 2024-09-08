<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class catagory extends Model
{
    use HasFactory;
    public $table = 'catagory';
    public $primaryKey = 'id';
    public $incrementing = 'true';
    public $timestamps = 'false';

    protected $fillable = [
        'cat_name',
        
    ];
}
