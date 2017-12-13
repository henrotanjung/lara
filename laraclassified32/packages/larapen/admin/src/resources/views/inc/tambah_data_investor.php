<?php include_once('koneksi.php');
//    print $_REQUEST();
//    $id = intval($_REQUEST['id']);    
    $query = 'select * from users ';    
    $data = mysqli_query($konek,$query);
    $showdata = mysqli_fetch_array($data);
?>
  

    <div class="container">                    
        <form class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="control-label col-sm-2" for="nama">Nama</label>
                <div class="col-sm-4">
                    <input type="number" name="id" style="display: none">
                    <input type="text" class="form-control" id="nama" 
                            name="Nama" >
                </div>
            </div>
                                                                                             
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" name="tambah_data" class="btn btn-default">Submit</button>
                </div>
            </div>
        </form>
    </div>


    