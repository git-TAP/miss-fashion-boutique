<?php

use Illuminate\Database\Seeder;

class AddressesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('addresses')->delete();
        
        \DB::table('addresses')->insert(array (
            0 => 
            array (
                'id' => 1,
                'area' => '131, kalawakan',
                'city' => 'Cebu',
                'zip' => 1229,
            ),
            
        ));
        
        
    }
}