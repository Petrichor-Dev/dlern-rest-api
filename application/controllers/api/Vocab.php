<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Vocab extends REST_Controller 
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Vocab_model", "v_model");
    }

    //--------------------METHOD DEFAULT--------------------//
    public function index_get()
    {
        //
        if($this->uri->segment(3))
        {
            if($this->uri->segment(3) != "kata_benda" || "kata_kerja" || "kata_sifat" || "kata_keterangan" || "konjungsi" || "preporsisi")
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => 'Mohon maaf, endpoint [' . strtoupper($this->uri->segment(3)) .'] tidak tersedia'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }

        else 
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, anda belum memasukkan endpoint'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    //--------------------GET KATA BENDA--------------------//
    public function kata_benda_get()
    {
        //Cek apakah kategori sudah di inputkan atau belum
        //Jika sudah
        if($this->uri->segment(4))
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(4));
            
            //Cek apakah kategori tersedia atau tidak 
            //Jika ketegori tidak tersedia
            if($data === 404)
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => 'Mohon maaf, endpoint ['. strtoupper($this->uri->segment(4)) .'] tidak tersedia'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }

            else 
            {
                $this->set_response([
                    "response" => [
                        200 => $data]
                ], REST_Controller::HTTP_OK);
            }
        }

        //Jika belum
        else 
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Anda belum menuliskan endpoint katagori'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
        
    }


    //--------------------GET KATA KERJA--------------------//
    public function kata_kerja_get()
    {
        //Cek apakah url mengandung keyword 'kategori'
        //Jika iya
        if($this->uri->segment(4))
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, endpoint [' . $this->uri->segment(4) . '] tidak tersedia'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        //Jika tidak
        else 
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(3));
            $this->set_response([
                "response" => [
                    200 => $data]
            ], REST_Controller::HTTP_OK);
        }
        
    }

    //--------------------GET KATA SIFAT--------------------//
    public function kata_sifat_get()
    {
        //Cek apakah url mengandung keyword 'kategori'
        //Jika iya
        if($this->uri->segment(4))
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, endpoint [' . $this->uri->segment(4) . '] tidak tersedia'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        //Jika tidak
        else 
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(3));
            $this->set_response([
                "response" => [
                    200 => $data]
            ], REST_Controller::HTTP_OK);
        }
        
    }

    //--------------------GET KATA KETERANGAN--------------------//
    public function kata_keterangan_get()
    {
        //Cek apakah url mengandung keyword 'kategori'
        //Jika iya
        if($this->uri->segment(4))
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, endpoint [' . $this->uri->segment(4) . '] tidak tersedia'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        //Jika tidak
        else 
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(3));
            $this->set_response([
                "response" => [
                    200 => $data]
            ], REST_Controller::HTTP_OK);
        }
        
    }


    //--------------------GET KONJUNGSI--------------------//
    public function konjungsi_get()
    {
        //Cek apakah url mengandung keyword 'kategori'
        //Jika iya
        if($this->uri->segment(4))
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, endpoint [' . $this->uri->segment(4) . '] tidak tersedia'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        //Jika tidak
        else 
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(3));
            $this->set_response([
                "response" => [
                    200 => $data]
            ], REST_Controller::HTTP_OK);
        }
        
    }


    //--------------------GET PREPORSISI--------------------//
    public function preporsisi_get()
    {
        //Cek apakah url mengandung keyword 'kategori'
        //Jika iya
        if($this->uri->segment(4))
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Mohon maaf, endpoint [' . $this->uri->segment(4) . '] tidak tersedia'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        //Jika tidak
        else 
        {
            $data = $this->v_model->ambilSemuaData($this->uri->segment(3));
            $this->set_response([
                "response" => [
                    200 => $data]
            ], REST_Controller::HTTP_OK);
        }
        
    }
}