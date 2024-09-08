<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class main extends Model
{
    use HasFactory;
    public $table = 'main';
    public $primaryKey = 'id';
    public $incrementing = 'true';
    public $timestamps = 'false';

    protected $fillable = [
        'main_name',
        'mane_name2',
        'main1_description',
        'main_image1',
        'main_image2',
        
        
    ];
}
