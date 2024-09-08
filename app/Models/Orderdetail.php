<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orderdetail extends Model
{
    use HasFactory;
    protected $table = 'orderdetails';
    protected $primaryKey = 'orderd_id ';

    protected $fillable = [
        'product_id',
        'qty',
        'rate',
        
    ];
}
