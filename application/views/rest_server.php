<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- CCCCCSSSSSS -->
    <style>
        @font-face {
            font-family: 'judul';
            src: url(<?= base_url() ?>application/views/fonts/judul.ttf);
        }

        @font-face {
            font-family: 'isi';
            src: url(<?= base_url() ?>application/views/fonts/isi.ttf);
        }

        body {
            background-color: whitesmoke;
            font-family: "isi";
        }

        h1 {
            font-family: "judul";
            font-weight: bold;
        }

        .container {
            border: 3px dotted black;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

    <title>Hello, world!</title>
</head>

<body>
    <div class="container">
        <!-- JUDUL -->
        <h1 class="text-center">Dokumentasi Dlern Rest API Hehee :)</h1>
        <hr style="border: 2px dotted black">
        <!-- END OF JUDUL -->



        <!-- URL UTAMA -->
        <h5>URL Utama : </h5>
        <ul>
            <li><b>http://localhost/dlern/api/[endpoint]</b></li>
        </ul>
        <hr style="border: 2px dotted black">
        <!-- END OF URL UTAMA -->



        <!-- BASE URL ASSETS -->
        <h5>Base URL untuk mengakses gambar dan sound : </h5>
        <ul>
            <li>
                Vocab :
                <ul>
                    <li>
                        gambar :
                        <b>
                            <a href="http://localhost/dlern/assets/vocab/gambar/">http://localhost/dlern/assets/vocab/gambar/</a>
                        </b>
                    </li>
                    <li>
                        suara :
                        <b>
                            <a href="http://localhost/dlern/assets/vocab/suara/">http://localhost/dlern/assets/vocab/suara/</a>
                        </b>
                    </li>
                </ul>
            </li>

            <li>
                Game :
                <ul>
                    <li>
                        gambar :
                        <b>
                            <a href="http://localhost/dlern/assets/game/gambar/">http://localhost/dlern/assets/game/gambar/</a>
                        </b>
                    </li>
                    <li>
                        pertanyaan :
                        <b>
                            <a href="http://localhost/dlern/assets/game/pertanyaan/">http://localhost/dlern/assets/game/pertanyaan/</a>
                        </b>
                    </li>
                </ul>
            </li>
        </ul>
        <hr style="border: 2px dotted black">
        <!-- END OF BASE URL ASSETS -->



        <!-- DAFTAR ENDPOINT -->
        <h5>Daftar endpoint yang dapat di akses :</h5>
        <ul>

            <!-- USER -->
            <li>
                Users
                <ul>
                    <li>
                        login
                        <b><a href="http://localhost/dlern/api/users/login">~ http://localhost/dlern/api/users/login</a></b>
                        <ul>
                            <b>
                                <li>[POST]</li>
                            </b>
                            <li>key yang di perlukan : <b>[email, password]</b> <i> - WAJIB</i></li>
                        </ul>
                    </li><br>

                    <li>
                        register
                        <b><a href="http://localhost/dlern/api/users/register">~ http://localhost/dlern/api/users/register</a></b>
                        <ul>
                            <b>
                                <li>[POST]</li>
                            </b>
                            <li>key yang di perlukan : <b>[nama_lengkap, username, email, foto_profil, jam_belajar, hari_belajar, password, koin]</b><i> - WAJIB</i></li>
                        </ul>
                    </li><br>

                    <li>
                        get_user
                        <b><a href="http://localhost/dlern/api/users/get_user">~ http://localhost/dlern/api/users/get_user</a></b>
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li>key yang di perlukan : <b>[uid]</b><i> - WAJIB</i></li>
                        </ul>
                    </li><br>

                    <li>
                        edit_user
                        <b><a href="http://localhost/dlern/api/users/edit_user">~ http://localhost/dlern/api/users/edit_user</a></b>
                        <ul>
                            <b>
                                <li>[PUT]</li>
                            </b>
                            <li>key yang di perlukan : <b>[nama_lengkap, username, email, foto_profil, jam_belajar, hari_belajar, password, koin]</b><i> - OPTIONAL</i></li>
                        </ul>
                    </li>
                </ul>
            </li><br>
            <!-- END USER -->



            <!-- VOCAB -->
            <li>
                Vocab
                <ul>
                    <li>
                        kata_kerja
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li><b><a href="http://localhost/dlern/api/vocab/kata_kerja">~ http://localhost/dlern/api/vocab/kata_kerja</a></b></li>
                        </ul>
                    </li>

                    <li>
                        kata_keterangan
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li><b><a href="http://localhost/dlern/api/vocab/kata_keterangan">~ http://localhost/dlern/api/vocab/kata_keterangan</a></b></li>
                        </ul>
                    </li>

                    <li>
                        kata_sifat
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li><b><a href="http://localhost/dlern/api/vocab/kata_sifat">~ http://localhost/dlern/api/vocab/kata_sifat</a></b></li>
                        </ul>
                    </li>

                    <li>
                        konjungsi
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li><b><a href="http://localhost/dlern/api/vocab/konjungsi">~ http://localhost/dlern/api/vocab/konjungsi</a></b></li>
                        </ul>
                    </li>

                    <li>
                        preporsisi
                        <ul>
                            <b>
                                <li>[GET]</li>
                            </b>
                            <li><b><a href="http://localhost/dlern/api/vocab/preporsisi">~ http://localhost/dlern/api/vocab/preporsisi</a></b></li>
                        </ul>
                    </li><br>
                    <li>
                        kata_benda <b>[GET]</b>
                        <ul>
                            <li>
                                <i>bagian_tubuh</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/bagian_tubuh">~ http://localhost/dlern/api/vocab/kata_benda/bagian_tubuh</a></b>

                            </li>
                            <li>
                                <i>barang_dikantor</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/barang_dikantor">~ http://localhost/dlern/api/vocab/kata_benda/barang_dikantor</a></b>

                            </li>
                            <li>
                                <i>barang_dirumah</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/barang_dirumah">~ http://localhost/dlern/api/vocab/kata_benda/barang_dirumah</a></b>

                            </li>
                            <li>
                                <i>benda_dalam_kelas</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/benda_dalam_kelas">~ http://localhost/dlern/api/vocab/kata_benda/benda_dalam_kelas</a></b>

                            </li>
                            <li>
                                <i>cuaca</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/cuaca">~ http://localhost/dlern/api/vocab/kata_benda/cuaca</a></b>

                            </li>
                            <li>
                                <i>makanan_dan_minuman</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/makanan_dan_minuman">~ http://localhost/dlern/api/vocab/kata_benda/makanan_dan_minuman</a></b>

                            </li>
                            <li>
                                <i>minuman</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/minuman">~ http://localhost/dlern/api/vocab/kata_benda/minuman</a></b>

                            </li>
                            <li>
                                <i>negara</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/negara">~ http://localhost/dlern/api/vocab/kata_benda/negara</a></b>

                            </li>
                            <li>
                                <i>obat</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/obat">~ http://localhost/dlern/api/vocab/kata_benda/obat</a></b>

                            </li>
                            <li>
                                <i>pakaian</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/pakaian">~ http://localhost/dlern/api/vocab/kata_benda/pakaian</a></b>

                            </li>
                            <li>
                                <i>pemandangan</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/pemandangan">~ http://localhost/dlern/api/vocab/kata_benda/pemandangan</a></b>

                            </li>
                            <li>
                                <i>penyakit</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/penyakit">~ http://localhost/dlern/api/vocab/kata_benda/penyakit</a></b>

                            </li>
                            <li>
                                <i>profesi</i>


                                <b><a href="http://localhost/dlern/api/vocab/kata_benda/profesi">~ http://localhost/dlern/api/vocab/kata_benda/profesi</a></b>

                            </li>
                        </ul>
                    </li>
                </ul>
            </li><br>
            <!-- END OF VOCAB -->



            <!-- GAME -->
            <li>
                Game
                <ul>
                    <li><b>[GET]</b></li>
                    <li><i>Contoh : http://localhost/dlern/api/game/[season]/[episode]</i></li>
                    <li>
                        Link must be like this : <b><a href="http://localhost/dlern/api/game/1/2">http://localhost/dlern/api/game/1/2</a> </b>:)
                    </li>
                </ul>
            </li><br>
            <!-- END OF GAME -->



            <!-- LANDING PAGE -->
            <li>
                Landing page
                <ul>
                    <li><b>[POST]</b></li>
                    <li>key yang di perlukan : <b>[pesan, email, waktu]</b><i> - WAJIB</i></li>
                    <li><b><a href="http://localhost/dlern/api/landing_page">~ http://localhost/dlern/api/landing_page</a></b></li>
                </ul>
            </li>
            <!-- END OF LANDING PAGE -->
        </ul>
        <!-- END OF DAFTAR ENDPOINT -->


        <hr style="border: 2px dotted black">
        <h1 class="text-center">Dokumentasi Dlern Rest API Hehee :)</h1>
    </div>
    <i>Copyright 2020 - 2022</i>





























    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>