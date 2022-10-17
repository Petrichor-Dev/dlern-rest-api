<?php

class Users_model extends CI_Model 
{
    public function validasiData($data)
    {
        //Ambil data dari database berdasarkan email yang di kirimkan
        $result = $this->db->get_where('user', ['email' => $data['email']])->result_array();
        
        //Jika data di temukan :
        if($result)
        {
            //Cek apakah password cocok atau tidak
            if($data['password'] === $result[0]['password'])
            {
                //Jika password cocok
                $result[0]['status'] = true;
                return $result;
            } else {
                //Jika password tidak cocok
                $result[0]['status'] = false;
                return $result;
            }
        }

        else 
        {
            //Jika data tidak di temukan
            return null;   
        }
    }


    public function insertData($table, $data)
    {
        $this->db->insert($table, $data);
        $result = $this->db->get_where($table, ['email' => $data['email']])->result_array();
        return $result;
    }

    //Untuk mengambil data satu kolom
    public function ambilSatuData($tabel, $selec, $param)
    {   
        $this->db->select("email, jam_belajar, hari_belajar, username, foto_profil, koin");
        $this->db->where($selec, $param);
        $data = $this->db->get($tabel)->result_array();
        return $data;
    }

    public function editUser($data, $uid)
    {
        //Cek apakah id sudah di kirim atau belum
        //Jika id kosong
        if(is_null($uid))
        {
            return 400;
        }

        //Jika id tidak kosong
        else 
        {
            $data_user = $this->db->get_where('user', ['uid' => $uid])->result_array();

            //Cek apakah id yang di kirimkan ada di database atau tidak
            if($data_user)
            {
                $this->db->update('user', $data, array('uid' => $uid));
                return $uid;
            }

            //Jika uid tidak di temukan
            else {
                return 404;
            }
        }
        
    }
}