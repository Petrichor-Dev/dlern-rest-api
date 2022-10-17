<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Landing_page extends REST_Controller 
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("LandingPage_model", "lp_model");
    }

    //--------------------METHOD DEFAULT--------------------//
    //Note : validasi belum di lakukan
    public function index_post()
    {
        $data_user = ['pesan' => $this->post('pesan'),
                      'email' => $this->post('email'),
                      'waktu' => $this->post('waktu')];
        
        if($this->lp_model->insertData("feed_back", $data_user) > 0)
        {
            $this->set_response([
                "response" => [
                    200 => [
                        "pesan" => "Saran dan komentar berhasil di kirim"
                    ]]
            ], REST_Controller::HTTP_OK);
        }

    }
}