@extends("adminsystem.master")
@section("content")
<?php 
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"        value="'.@$arrRowData['fullname'].'">'; 
$inputThemeLocation          =   '<input type="text" class="form-control" name="theme_location"        value="'.@$arrRowData['theme_location'].'">'; 
$status                 =   (count($arrRowData) > 0) ? (int)@$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order" id="sort_order"     value="'.@$arrRowData['sort_order'].'">';
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id" value="'.@$id.'" />'; 
?>
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="{{$icon}}"></i>
            <span class="caption-subject font-dark sbold uppercase">{{$title}}</span>
        </div>
        <div class="actions">
           <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <button onclick="save()" class="btn purple">Lưu <i class="fa fa-floppy-o"></i></button> 
                    <a href="<?php echo $linkCancel; ?>" class="btn green">Thoát <i class="fa fa-ban"></i></a>                    </div>                                                
                </div>
            </div>    
        </div>
    </div>
    <div class="portlet-body form">
        <form class="form-horizontal" role="form" enctype="multipart/form-data" name="frm">
            {{ csrf_field() }}                          
                <?php echo  $inputID; ?>   
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Tên khối banner</b></label>
                        <div class="col-md-9">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Vị trí trong theme</b></label>
                        <div class="col-md-9">
                            <?php echo $inputThemeLocation; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div> 
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-9">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Trạng thái</b></label>
                        <div class="col-md-9">
                            <?php echo $ddlStatus; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </div>                                                                     
            </div>                             
        </form>
    </div>
</div>
<script type="text/javascript" language="javascript">
    function resetErrorStatus(){
        var id                   =   $('input[name="id"]');
        var fullname             =   $('input[name="fullname"]');                
        var sort_order           =   $('input[name="sort_order"]');        
        var status               =   $('select[name="status"]');
        
        $(fullname).closest('.form-group').removeClass("has-error");   
        $(theme_location).closest('.form-group').removeClass("has-error");        
        $(sort_order).closest('.form-group').removeClass("has-error");          
        $(status).closest('.form-group').removeClass("has-error");          

        $(fullname).closest('.form-group').find('span').empty().hide();        
        $(theme_location).closest('.form-group').find('span').empty().hide();        
        $(sort_order).closest('.form-group').find('span').empty().hide();    
        $(status).closest('.form-group').find('span').empty().hide();              
    }

    function save(){
        var id=$('input[name="id"]').val();        
        var fullname=$('input[name="fullname"]').val(); 
        var theme_location=$('input[name="theme_location"]').val();  
        var status=$('select[name="status"]').val();                   
        var sort_order=$('input[name="sort_order"]').val();        
        var token = $('input[name="_token"]').val();   
        resetErrorStatus();
        var dataItem={
            "id":id,
            "fullname":fullname,   
            "theme_location":theme_location,    
            "status":status,     
            "sort_order":sort_order,            
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                if(data.checked==1){                    
                    window.location.href = "<?php echo $linkCancel; ?>";
                }else{
                    var data_error=data.error;
                    if(typeof data_error.fullname               != "undefined"){
                        $('input[name="fullname"]').closest('.form-group').addClass(data_error.fullname.type_msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').text(data_error.fullname.msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').show();                        
                    }          
                    if(typeof data_error.theme_location               != "undefined"){
                        $('input[name="theme_location"]').closest('.form-group').addClass(data_error.theme_location.type_msg);
                        $('input[name="theme_location"]').closest('.form-group').find('span').text(data_error.theme_location.msg);
                        $('input[name="theme_location"]').closest('.form-group').find('span').show();                        
                    }             
                    if(typeof data_error.sort_order               != "undefined"){
                        $('input[name="sort_order"]').closest('.form-group').addClass(data_error.sort_order.type_msg);
                        $('input[name="sort_order"]').closest('.form-group').find('span').text(data_error.sort_order.msg);
                        $('input[name="sort_order"]').closest('.form-group').find('span').show();                        
                    }        
                    if(typeof data_error.status               != "undefined"){
                        $('select[name="status"]').closest('.form-group').addClass(data_error.status.type_msg);
                        $('select[name="status"]').closest('.form-group').find('span').text(data_error.status.msg);
                        $('select[name="status"]').closest('.form-group').find('span').show();

                    }                                
                }
                spinner.hide();
            },
            error : function (data){
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
        });
    }
</script>
@endsection()            