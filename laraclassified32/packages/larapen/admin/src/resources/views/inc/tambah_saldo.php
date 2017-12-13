<?php
   
 include_once('koneksi.php');
 
 if (isset($_REQUEST['id'])) {
   
    $id = intval($_REQUEST['id']);    
    $query = 'select * from saldo_investor WHERE id="'.$id.'"';    
    $data = mysqli_query($konek,$query);
    $showdata = mysqli_fetch_array($data);

    ?>

    <div class="container">                    
        <form class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="control-label col-sm-2" for="nama">Saldo</label>
                <div class="col-sm-4">
                    <input type="text" name="id" value="<?php echo $showdata['id']; ?>" style="display: none">
                    <input type="number" class="form-control" id="edit_saldo" 
                            name="saldo" >
                </div>
            </div>
                                                                                             
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" name="edit_saldo" class="btn btn-default">Submit</button>
                </div>
            </div>
        </form>
    </div>
   
 <?php    
    }

    