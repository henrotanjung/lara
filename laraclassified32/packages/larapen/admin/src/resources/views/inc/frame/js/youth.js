/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    
    function onchange_select_nama_jemaat_absensi() {  
        
        var id = document.getElementById("select_nama_user").value;     
        
        
        document.getElementById("nama_id_user").value = id;         
              
        
    }

    $(document).on("click", ".edit_modal", function()
    {
        var id = $(this).data('id');              
        $(".col-sm-4 #edit_nama").val(id);
        $.post('index.php',{id:id});        
        
    }    
    )
    
    
    $(document).ready(function(){
        
            $(document).on('click', '#edit_jemaat', function(e){

                    e.preventDefault();

                    var uid = $(this).data('id');   // it will get id of clicked row

                    $('#dynamic-content').html(''); // leave it blank before ajax call
                    $('#modal-loader').show();      // load ajax loader

                    $.ajax({
                            url: 'tambah_saldo.php',
                            type: 'POST',
                            data: 'id='+uid,
                            dataType: 'html'
                    })
                    .done(function(data){
                            console.log(data);	
                            $('#dynamic-content').html('');    
                            $('#dynamic-content').html(data); // load response 
                            $('#modal-loader').hide();		  // hide ajax loader	
                    })
                    .fail(function(){
                            $('#dynamic-content').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
                            $('#modal-loader').hide();
                    });

            }); 
            
            
            
            
        $(document).on('click', '#view_data', function(e){

                    e.preventDefault();

                    var uid = $(this).data('id');   // it will get id of clicked row

                    $('#dynamic-content-view').html(''); // leave it blank before ajax call
                    $('#modal-loader').show();      // load ajax loader

                    $.ajax({
                            url: 'proces/view_data_jemaat.php',
                            type: 'POST',
                            data: 'id='+uid,
                            dataType: 'html'
                    })
                    .done(function(data){
                            console.log(data);	
                            $('#dynamic-content-view').html('');    
                            $('#dynamic-content-view').html(data); // load response 
                            $('#modal-loader').hide();		  // hide ajax loader	
                    })
                    .fail(function(){
                            $('#dynamic-content-view').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
                            $('#modal-loader').hide();
                    });

            });                                                            
            
            
//            $(document).on('change', '#select_month', function(e){
//                    
//                    e.preventDefault();
//                    console.log($(this).data('id'));
//                    console.log(e.value);
//                    console.log(typeof $(this));
//                    var uid = $(this).data('id');   // it will get id of clicked row
//                    
//                    $('#dynamic-content-view').html(''); // leave it blank before ajax call
//                    $('#modal-loader').show();      // load ajax loader
//
//                    $.ajax({
//                            url: 'proces/search_ulang_tahun.php',
//                            type: 'POST',
//                            data: 'id='+uid,
//                            dataType: 'html'
//                    })
//                    .done(function(data){
//                            console.log(data);	
//                            $('#dynamic-content-view').html('');    
//                            $('#dynamic-content-view').html(data); // load response 
//                            $('#modal-loader').hide();		  // hide ajax loader	
//                    })
//                    .fail(function(){
//                            $('#dynamic-content-view').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
//                            $('#modal-loader').hide();
//                    });
//
//            });
            
        
            
    });
    
    
    
    $(function(){
        var hash = window.location.hash;
        hash && $('ul.nav a[href="' + hash + '"]').tab('show');

        $('.nav-tabs a').click(function (e) {
          $(this).tab('show');
          var scrollmem = $('body').scrollTop() || $('html').scrollTop();
          window.location.hash = this.hash;
          $('html,body').scrollTop(scrollmem);
        });
      });
      
    
      
      
    
      
      
    