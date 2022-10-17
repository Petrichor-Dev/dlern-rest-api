<?php
class Game_model extends CI_Model
{
    public function getEpisode($table, $eps, $ses)
    {   
        
        $this->db->where("episode", $eps);
        $this->db->where("season", $ses);
        $cek_eps = $this->db->get($table)->result_array();

        //Cek apakah episode yang di masukan user terdapat dalam database atau tidak
        //Jika episode terdapat di dalam database
        if($cek_eps)
        {
            //Looping data
            foreach ($cek_eps as $i) 
            {
                //Dan masukkan setiap data yang di looping ke dalam araay berdasarkan type soal nya. Rangkai semua datanya kedalam sebuah array
                switch ($i['type_soal']) 
                {
                    //Type soal S11
                    case 1:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s11",           
                                   "soal"       => [
                                     "pertanyaan" => $i['pertanyaanIndo'],
                                     //pilihan berisi string url_gambar
                                     "pilihan"    => ["a" => $i['option_a'],
                                                      "b" => $i['option_b'],
                                                      "c" => $i['option_c']]],
                                                      
                                   //jawaban berisi string url_gambar
                                   "jawaban"=> $i['jawaban']
                                  ];
                    break;
                    

                    //Type soal S12                                
                    case 2:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s12",           
                                   "soal"       => [
                                     "pertanyaan"       => $i['pertanyaanIndo'],
                                     "voice"            => $i['voice'],
                                     "keterangan_voice" => $i["keterangan_voice"],
                                     "pilihan"          => ["a" => $i['option_a'],
                                                            "b" => $i['option_b'],
                                                            "c" => $i['option_c']]],

                                   "jawaban" => $i['jawaban']
                                  ];
                    break;


                    //Type soal S13                               
                    case 3:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s13",           
                                   "soal"       => [
                                     "pertanyaan" => $i['pertanyaanIndo'],
                                      //berupa array yang berisi susunan kata
                                     "pilihan"    => explode(" ", $i['susun_kata'])],

                                    //berupa array yang berisi susunan kata               
                                   "jawaban" => explode(" ", $i['jawaban'])
                                
                                  ];
                    break;


                    //Type soal S21                        
                    case 4:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s21",           
                                   "soal"       => [
                                     "pertanyaan" => $i["pertanyaanIndo"],
                                     "voice"      => $i["voice"]],

                                   "jawaban"    => $i["jawaban"]
                                  ];
                    break;


                    //Type soal S22                               
                    case 5:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s22",           
                                   "soal"       => [
                                     "pertanyaanIndo"   => $i['pertanyaanIndo'],
                                     "pertanyaanJerman" => $i["keterangan_voice"],
                                     "voice"            => explode(" ", $i["voice"]),
                                     //berupa array yang berisi gambar acak(gambarnya berbentuk url)
                                     "pilihan"          => ["a" => $i['option_a'],
                                                            "b" => $i['option_b'],
                                                            "c" => $i['option_c']]],

                                   "jawaban"    => $i['jawaban']
                                  ];
                    break;


                    //Type soal S23                               
                    case 6:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s23",           
                                   "soal"       => [
                                     "pertanyaan" => $i['pertanyaanIndo'],
                                     //berupa array yang berisi susunan huruf
                                     "pilihan"    => ["a" => $i['option_a'],
                                                      "b" => $i['option_b'],
                                                      "c" => $i['option_c']]],

                                   "jawaban" => $i['jawaban']
                                  ];
                    break;


                    //Type soal S31                               
                    case 7:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s31",           
                                   "soal"       => [
                                     "pertanyaan" => $i['pertanyaanIndo'],
                                     "gambar"     => explode(" ", $i["acak_gambar"]),
                                     "pilihan"    => explode(",",$i["pertanyaanJerm"])],

                                   "jawaban"    => [
                                       "gambar" => $i["jawaban"],
                                       "kata"   => explode(",", $i["pertanyaanJerm"])]
                                  ];
                    break;


                    //Type soal S32                               
                    case 8:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s32",           
                                   "soal"       => [
                                     "pertanyaan" => $i['pertanyaanIndo'],
                                     "gambar"     => explode(" ", $i["acak_gambar"]),
                                     "voicee"     => $i['voice'],
                                     "kata"       => $i['jawaban'],
                                     "huruf"      => explode(" ", $i["susun_huruf"])],

                                   "jawaban"    => $i["jawaban"]
                                  ];
                    break;


                    //Type soal S33                               
                    case 9:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s33",           
                                   "soal"       => [
                                     "pertanyaanIndo"   => $i["pertanyaanIndo"],
                                     "pertanyaanJerman" => $i["pertanyaanJerm"],
                                     "voice"            => $i["voice"],
                                     "pilihan"          => ["a" => $i['option_a'],
                                                            "b" => $i['option_b'],
                                                            "c" => $i['option_c']]],

                                   "jawaban"    => $i['jawaban']
                                  ];
                    break;


                    //Type soal S241                               
                    case 10:
                        $data[] = ["season"     => $i["season"],
                                   "episode"    => $i["episode"],
                                   "nomor_soal" => $i["no_soal"],
                                   "type_soal"  => "s41",           
                                   "soal"       => [
                                     "gambar"     => $i["gambar"],
                                     "pertanyaan" => $i["pertanyaanIndo"],
                                     "pilihan"    => ["a" => $i['option_a'],
                                                      "b" => $i['option_b'],
                                                      "c" => $i['option_c']]],

                                   "jawaban"    => $i['jawaban']
                                  ];
                    break;


                    default:
                    echo "Upss..";
                    break;
                }
            }

            //Jika data[Array] telah selesai di rangkai, kembalikan data ke controller
            return $data;

        }


        //Jika episode tidak terdapat di dalam database
        else 
        {
            return 404;
        }
    }





    //CATATAN : code ini belum sempurna. jika user meminta 1 sesion maka yang di kembalikan adalah seluruh datanya. seharusnya tidak begitu. kita sebagai developer hanya boleh memberikan data yang user perlukan saja. FIX IT. rangkai datanya dalam bentuk array dan berikan data yang hanya user perlukan saja.
    public function getSeason($table, $id_session, $ses)
    {   

        $cek_ses = $this->db->get_where($table, [$id_session => $ses])->result_array();

        if($cek_ses) {
            return $cek_ses;
        }

        else {
            return 404;
        }
    }
}