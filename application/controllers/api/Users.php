<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Users extends REST_Controller 
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Users_model", "u_model");
    }

    //--------------------LOGIN METHOD--------------------//
    public function login_post()
    {
        //Tangkap data dari form
        $data = ['email' => $this->post('email', true),
                 'password' => $this->post('password', true)
                ];
        
        //Validasi data berdasarkan rules yang sudah di buat agar data yang di tangkap dapat di pastikan sudah aman.

        //Validasi email
        $this->form_validation->set_rules("email", "Email", "required|trim|valid_email", 
        ["required" => "Anda belum memasukkan email!",
         "valid_email" => "Email yang anda masukkan tidak valid!"
        ]);

        //Validasi password
        $this->form_validation->set_rules("password", "Password", "required|trim",
        ["required" => "Anda belum memasukkan password!"]);

        
        //Cek apakah validasi sukses or not
        if ( $this->form_validation->run() == false )
        {   

            if($err1 = form_error('email',' ', ' '))
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => $err1
                ], REST_Controller::HTTP_BAD_REQUEST);

                
                if($err2 = form_error('password',' ', ' '))
                {
                    $this->set_response([
                        'status' => FALSE,

                        'pesan' => ['1' => $err1,
                                    '2' => $err2]
                    ], REST_Controller::HTTP_BAD_REQUEST);
                }
            }
            else
            {
                $err2 = form_error('password',' ', ' ');
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => $err2
                ], REST_Controller::HTTP_BAD_REQUEST);    
            }
        }

        //Jika validasi sukses
        else
        {
            //cek apakah data ada atau tidak
            $data2 = $this->u_model->validasiData($data);
            
            //Jika data tidak di temukan
            if(is_null($data2))
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => 'Email tidak di temukan'
                ], REST_Controller::HTTP_NOT_FOUND);
            }

            //Jika data di temukan
            else 
            {
                //Cek apakah password sudah cocok atau belum
                if($data2[0]['status'] === true)
                {
                    $this->set_response([
                        "response" => [
                            200 => [
                                'uid' => $data2[0]['uid'],
                                'pesan' => 'Silahkan login'
                            ]]
                    ], REST_Controller::HTTP_OK);
                }
                
                else {
                    //Jika password tidak cocok
                    $this->set_response([
                        'status' => FALSE,
                        'pesan' => 'Password yang anda masukkan salah!'
                    ], REST_Controller::HTTP_NOT_FOUND);
                }
            }
            
        }
        
    }


    //--------------------REGISTRASI METHOD--------------------//
    //Validasi form tidak lengkap
    public function register_post()
    {
        
        $data_user = ["nama_lengkap" => $this->post("nama_lengkap"),
                      "username"=> $this->post("username"),
                      "email"=> $this->post("email"),
                      "foto_profil"=> $this->post("foto_profil"),
                      "jam_belajar"=> $this->post("jam_belajar"),
                      "hari_belajar"=> $this->post("hari_belajar"),
                      "password"=> $this->post("password"),
                      ];
        
        //Validasi email
        $this->form_validation->set_rules("nama_lengkap", "namaLengkap", "required|trim",
        ["required" => "Anda belum memasukkan nama lengkap!"]);

        $this->form_validation->set_rules("username", "userName", "required|trim",
        ["required" => "Anda belum memasukkan username!"]);

        $this->form_validation->set_rules("email", "Email", "required|trim|valid_email",
        ["required" => "Anda belum memasukkan email!",
         "valid_email" => "Email yang anda masukkan tidak valid!"]);

        $this->form_validation->set_rules("password", "Password", "required|trim|",
        ["required" => "Anda belum memasukkan password!"]);

        $this->form_validation->set_rules("jam_belajar", "hariBelajar", "required|trim|",
        ["required" => "Anda belum memasukkan jam belajar!"]);

        $this->form_validation->set_rules("hari_belajar", "hariBelajar", "required|trim|",
        ["required" => "Anda belum memasukkan hari belajar!"]);

        $this->form_validation->set_rules("foto_profile", "fotoProfile", "trim|",
        [" " => " "]);

        $result = $this->u_model->insertData('user', $data_user);
        if($result)
        {
            $this->set_response([
                "response" => [
                    200 => [
                        'uid' => $data2[0]['uid'],
                        'pesan' => 'Data berhasil di tambahkan'
                    ]]
            ], REST_Controller::HTTP_OK);
        }
    }

    //--------------------GET USER METHOD--------------------//
    public function get_user_get()
    {
        $data = $this->get('uid');
        $result = $this->u_model->ambilSatuData('user', 'uid', $data);

        if($result)
        {
            $this->set_response([
                "response" => [
                    200 => $result]
            ], REST_Controller::HTTP_OK);
        }

        else 
        {
            $this->set_response([
                'status' => FALSE,
                'pesan' => 'Data tidak di temukan'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    //--------------------EDIT USER METHOD--------------------//
    //Note : validasi form tidak lengkap
    public function edit_user_put()
    {   
        //Tangkap setiap data yang di kirimkan dari form
        $uid = $this->put('uid');
        $data_user = ["nama_lengkap" => $this->put("nama_lengkap"),
                      "username"=> $this->put("username"),
                      "email"=> $this->put("email"),
                      "foto_profil"=> $this->put("foto_profil"),
                      "jam_belajar"=> $this->put("jam_belajar"),
                      "hari_belajar"=> $this->put("hari_belajar"),
                      "password"=> $this->put("password"),
                      ];
        //Jalankan model untuk melakukan validasi
        $result = $this->u_model->editUser($data_user, $uid);

        //Jika validasi sukses
        if($result === $uid)
        {
            $this->set_response([
                "response" => [
                    200 => [
                        'uid' => $uid,
                        'pesan' => 'Data berhasil di edit'
                    ]]
            ], REST_Controller::HTTP_OK);
        }

        //Jika Validasi gagal
        else 
        {
            //Uid tidak yang di inputkan tidak sesuai dengan apa yang ada di databse
            if($result === 404)
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => 'Uid tidak di temukan'
                ], REST_Controller::HTTP_NOT_FOUND);
            }

            //Uid tidak di isi
            if($result === 400)
            {
                $this->set_response([
                    'status' => FALSE,
                    'pesan' => 'Uid wajib di isi terlebih dahulu'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
    }


    //--------------------EDIT USER METHOD--------------------//
    public function delete_user_delete()
    {
        $uid = $this->delete('uid');
    }




























}