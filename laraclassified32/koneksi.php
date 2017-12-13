
<?php
//	require_once('warning.php');
//            include_once("ahp.php");// Include AHP master
	/*--- KONEKSI TO DB	 -----*/
	/*Cek Koneksi*/
	$konek = mysqli_connect("localhost","root","");
		if($konek)
			{
				/*echo "Sukses Koneksi Ke Server";*/
			}else{ die('Gagal Koneksi Ke Server');}
		$db = mysqli_select_db($konek,"bambang_msc");
			if($db)
				{
					/*echo "Sukses Terhubung Ke DB";*/
				}else{ die('Gagal Terhubung Ke DB11');}
?>