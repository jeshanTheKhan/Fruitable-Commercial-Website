<?php

namespace Database\Seeders;
use App\Models\Customer;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        Customer::factory()->create([
            'customer_name' => 'Toma',
            'email' => 'toma@gmail.com',
            'password' => '1234567890',
            'address' => 'tvgate,sylhet',
            'customer_phone' => '1234567890',
        ]);
    }
}
