<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Game extends REST_Controller 
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Game_model", "g_model");
    }



    //--------------------GET GAME--------------------//
    public function index_get()
    {
        //Cek apakah user sudah memasukan sesion atau belum
        $ses =  $this->uri->segment(3);
        //Jika user sudah memasukan sesion
        if(isset($ses))
        {
            //Cek apakah sesion yang di masukkan user terdapat dalam database
            $cek_ses = $this->g_model->getSeason("bank_soal", "season", $ses);

            //Jika sesion tidak ada di database
            if($cek_ses === 404)
            {
                $this->set_response([
                            'status' => FALSE,
                            'pesan' => 'Mohon maaf, endpoint[sesion] yang anda request tidak tersedia'
                        ], REST_Controller::HTTP_NOT_FOUND);
            }

            //Jika sesion ada di database
            else 
            {
                //Cek apakah user me-request episode 
                $eps = $this->uri->segment(4);
                
                //Jika user me-request episode
                if(isset($eps))
                {

                    //Cek apakah episode yang di masukkan user terdapat dalam database
                    $cek_eps = $this->g_model->getEpisode("bank_soal", $eps, $ses);

                    //Jika episode tidak ada di database
                    if($cek_eps === 404)
                    {

                        $this->set_response([
                            'status' => FALSE,
                            'pesan' => 'Mohon maaf, endpoint[episode] yang anda request tidak tersedia'
                        ], REST_Controller::HTTP_NOT_FOUND);
                        
                    }

                    //Jika episode ada di database
                    else 
                    {
                        $this->set_response($cek_eps, REST_Controller::HTTP_OK);
                    }
                }

                //Jika user tidak merequest episode
                else 
                {
                    $this->set_response($cek_ses, REST_Controller::HTTP_OK);
                }
            }
        }

        //Jika user belum memasukan sesion
        else
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, anda belum memasukkan endpoint[sesion]'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

    }











    
}