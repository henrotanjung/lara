<?php

    include_once('koneksi.php');
    $select = 'select * from saldo_investor';
    $query = mysqli_query($konek,$select); 
    
    if (isset($_POST['edit_saldo'])) {        
        $id = $_POST['id'];
        $saldo = $_POST['saldo'];                  
        $current_saldo = 'select saldo from saldo_investor where id="'.$id.'"';
        $query_cur_saldo = mysqli_query($konek,$current_saldo);
        $cur_saldo = mysqli_fetch_array($query_cur_saldo);
        $cur_saldo = $cur_saldo['saldo'];
        $total_saldo = $cur_saldo + $saldo;
        $sql	= 'update saldo_investor set saldo="'.$total_saldo.'" where id="'.$id.'"';        
        $query	= mysqli_query($konek,$sql);

        header('Location: '.$_SERVER['PHP_SELF'].'?success'); 
        exit; 
 }
 
 if (isset($_POST['tambah_data_investor'])) {                               
        $user_id = $_POST['nama_id_user'];
        $nama = $_POST['nama_select_nama_user'];
        $email = $_POST['email'];
        $saldo = $_POST['saldo'];               
        
        $sql = 'insert into saldo_investor(user_id,nama,email,saldo) values ("'.$user_id.'","'.$nama.'","'.$email.'","'.$saldo.'")';
        $insert = mysqli_query($konek,$sql);
        header('Location: '.$_SERVER['PHP_SELF'].'?success'); 
        exit; 
        
    }       

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Saldo Investor</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
  <link rel="stylesheet" href="frame/bootstrap-3.3.7/dist/css/bootstrap.min.css">           
    <link rel="stylesheet" href="frame/bootstrap-3.3.7/dist/css/bootstrap.min2.css">           
    <link rel="stylesheet" href="frame/bootstrap-3.3.7/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css">           
    <link rel="stylesheet" href="frame/css/youthcss.css">
    <link href="frame/bootstrap-3.3.7/dist/customecss/style.php" rel="stylesheet" />        
    <script src="frame/jquery/jquery.min.js"></script>        
    <script src="frame/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="frame/Chart/Chart.bundle.js"></script>        
    <script src="frame/Chart/Chart.min.js"></script>
    <!--<link rel="stylesheet" href="frame/bootstrap-3.3.7/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.min.js">-->
    <script src="frame/js/youth.js"></script>
</head>
<body>

<div class="container">
   
    <div class="jumbotron text-center">
        <h1>SALDO INVESTOR</h1>        
    </div>
    <div>
        <button class="btn btn-sm btn-info" ><a style="color: white;" id="back_to_dasboard" href="http://localhost/laraclassified32/public/admin" class="edit_modal">Kembali ke Dasboard</a></button>                        
        <button class="btn btn-sm btn-info" ><a style="color: white;" data-toggle="modal" data-id="2" id="tambah_data_invest" href="#btn_tambah_data" class="edit_modal">Tambah Data</a></button>                        
    </div>
  
  <table class="table">
    <thead>
      <tr class="success">           
        <th>Nama</th>        
        <th>Email</th>
        <th>Saldo</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <?php
        
        if ($query === FALSE){
                die(mysqli_error($konek));
            }
        $no = 0;
        while($data = mysqli_fetch_array($query)) {
            $no += 1; 
            $ql_users = 'select email from users where id = "'.$data['user_id'].'"';
            $query_email	= mysqli_query($konek,$ql_users);
            $data_user	= mysqli_fetch_array($query_email);
        ?>
    
    <tbody>        
        <tr class="info">
            
            <td p bgcolor="#FFFFFF"><?php echo $data['nama']; ?></td>
            <td p bgcolor="#FFFFFF"><?php echo $data_user['email']; ?></td>                                            
            <td p bgcolor="#FFFFFF"><?php echo $data['saldo']; ?></td>
            <td p bgcolor="#FFFFFF" style="text-align: left">                
                <button class="btn btn-sm btn-info" ><a style="color: white;" data-toggle="modal" data-id="<?php echo $data['id']; ?>" id="edit_jemaat" href="#edit_dialog" class="edit_modal">Tambah Saldo</a></button>                
                
            </td>
        </tr>
    </tbody>
    <?php
        }
    ?>
  </table>
</div>
    <div class="container">            
            <!-- Modal -->
            
            <div class="modal fade" id="btn_tambah_data" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Tambah Data</h4>                    
                    </div>
                    <div class="container">                    
                        <form class="form-horizontal" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="nama">Nama:</label>
                                <?php
                                    $ql_users = 'select * from users where user_type_id=2';

                                    $_q_users = mysqli_query($konek, $ql_users);
                                    $option = '';

                                    while ($data = mysqli_fetch_array($_q_users))
                                        {

                                        $option .= '<option value = "'.$data['id'].'">'.$data['name'].'</option>';
                                    }   

                                    ?>
                                <div class="col-sm-4">
                                    <select class="form-control select_month" id="select_nama_user" name="nama_select_nama_user" onchange="onchange_select_nama_jemaat_absensi()"> 
                                        <option value = "" selected="selected"></option>
                                        <?php echo $option; ?>
                                    </select>                            
                                    <input type="text" id="nama_id_user" name="nama_id_user" hidden >
                                    
                                </div>
                                
                            </div>                           
                            
                            <div class="form-group" hidden>
                                <label class="control-label col-sm-2" for="hp">Email:</label>
                                <div class="col-sm-4" >          
                                    <input type="text" class="form-control" id="email" placeholder="Email" name="email">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="hp">Saldo:</label>
                                <div class="col-sm-4">          
                                    <input type="text" class="form-control" id="saldo" placeholder="Saldo" name="saldo">
                                </div>
                            </div>
                            
                            

                            <div class="form-group">        
                              <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" name="tambah_data_investor" class="btn btn-default">Submit</button>
                              </div>
                            </div>
                        </form>
                    </div>                  
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      </div>
                </div>

              </div>
            </div>
            
            
            <div class="modal fade" id="tambah_data_investor" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Tambah Data</h4>                    
                    </div>                           
                    
                    <div class="modal-body">                        
                        <!-- content will be load here -->                          
                        <div id="dynamic-content-tambah"></div>                        
                    </div>                     
                    
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

              </div>
            </div>
            
            
            <!--EDIT DATA JEMAAT-->
            
            
            <div class="modal fade" id="edit_dialog" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Tambah Saldo</h4>                    
                    </div>                           
                    
                    <div class="modal-body">                        
                        <!-- content will be load here -->                          
                        <div id="dynamic-content"></div>                        
                    </div>                     
                    
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

              </div>
            </div>
    </div>
            
    <script>
        $(document).ready(function(){                    
            
                $(document).on('click', '#tambah_data_investor', function(){
                        
//                        e.preventDefault();

        //                    var uid = $(this).data('id');   // it will get id of clicked row

                        $('#dynamic-content-tambah').html(''); // leave it blank before ajax call
                        $('#modal-loader').show();      // load ajax loader

                        $.ajax({
                                url: 'tambah_data_investor.php',
                                type: 'POST',
        //                            data: 'id='+uid,
                                dataType: 'html'
                        })
                        .done(function(data){
                                console.log(data);	
                                $('#dynamic-content-tambah').html('');    
                                $('#dynamic-content-tambah').html(data); // load response 
                                $('#modal-loader').hide();		  // hide ajax loader	
                        })
                        .fail(function(){
                                $('#dynamic-content-tambah').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
                                $('#modal-loader').hide();
                        });

                    }); 
            
            
            
            
        
            
    });
    
    </script>

</body>
</html>

