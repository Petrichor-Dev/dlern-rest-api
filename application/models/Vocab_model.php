<?php
class Vocab_model extends CI_Model
{
    public function ambilSemuaData($kategori)
    {   
        if($this->db->table_exists($kategori))
        {   
         
            if ($this->db->field_exists('url_gambar', $kategori))
            {
                $this->db->select("jerman, indo, url_gambar, url_voice");
                $data = $this->db->get($kategori)->result_array();
                return $data;
            }

            else 
            {
                $this->db->select("jerman, indo, url_voice");
                $data = $this->db->get($kategori)->result_array();
                return $data;
            }
            
        }
        else 
        {
            return 404;
        } 
    }
}