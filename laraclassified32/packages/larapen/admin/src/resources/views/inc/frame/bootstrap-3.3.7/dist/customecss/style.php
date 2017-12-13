
<?php
header("Content-type: text/css");
$color = "green";        // <--- define the variable 
$height = 70;
$h = (string) $height;
$result = $h.'px';
$konek = mysqli_connect("localhost","root","");
		if($konek)
			{
				/*echo "Sukses Koneksi Ke Server";*/
			}else{ die('Gagal Koneksi Ke Server');}
		$db = mysqli_select_db($konek,"absensiyouth");
			if($db)
				{
					/*echo "Sukses Terhubung Ke DB";*/
				}else{ die('Gagal Terhubung Ke DB');}
$sql_select = 'select * from absensi where id = 50';


echo <<<CSS
/* --- start of css --- */
#test{
color: $color;
width:10px; 
height:$result;
background:#fea;
}
.title-text
	{
	color: $color;  /* <--- use the variable */
	font-weight: bold;
	font-size: 1.2em;
	text-align: left;
	}
/* --- end of css --- */
CSS;

?>

