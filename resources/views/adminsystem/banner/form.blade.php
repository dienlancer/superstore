@extends("adminsystem.master")
@section("content")
<?php 
$setting= getSettingSystem();
$linkCancel             =   route('adminsystem.'.$controller.'.getList',[@$category_id]);
$linkSave               =   route('adminsystem.'.$controller.'.save');
$linkUploadFile         =   route('adminsystem.'.$controller.'.uploadFile');

$inputCaption           =   '<textarea name="caption" rows="2" cols="100" class="form-control" >'.@$arrRowData['caption'].'</textarea>'; 
$inputAlt               =   '<textarea name="alt" rows="2" cols="100" class="form-control" >'.@$arrRowData['alt'].'</textarea>'; 
$inputPageurl           =   '<input type="text" class="form-control" name="page_url"     value="'.@$arrRowData['page_url'].'">'; 
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"   value="'.@$arrRowData['sort_order'].'">';
$status                 =   (count($arrRowData) > 0) ? @$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");
$ddlCategory            =   cmsSelectboxCategory('category_id', 'form-control',$arrCategoryBanner,@$category_id,"disabled");
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"  value="'.@$id.'" />'; 
$picture                =   "";
$strImage               =   "";
if(count(@$arrRowData)>0){
    if(!empty(@$arrRowData["image"])){
        $picture        =   '<div class="col-sm-6"><center>&nbsp;<img style="width:100%" src="'.asset("/upload/".@$arrRowData["image"]).'" />&nbsp;</center></div><div class="col-sm-6"><a href="javascript:void(0);" onclick="deleteImage();"><img src="'.asset('public/adminsystem/images/delete-icon.png').'"/></a></div>';                        
        $strImage       =   @$arrRowData["image"];
    }        
}   
$inputPictureHidden     =   '<input type="hidden" name="image_hidden"  value="'.@$strImage.'" />';
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
        <form class="form-horizontal" name="frm" role="form" enctype="multipart/form-data">
            {{ csrf_field() }}
            <?php echo $inputPictureHidden; ?>                
            <?php echo  $inputID; ?>               
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Caption</b></label>
                        <div class="col-md-10">
                            <?php echo $inputCaption; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                       
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Alt</b></label>
                        <div class="col-md-10">
                            <?php echo $inputAlt; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                       
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Page URL</b></label>
                        <div class="col-md-10">
                            <?php echo $inputPageurl; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>     
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Khối banner</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlCategory; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                    
                </div>   
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Hình</b></label>
                        <div class="col-md-10">
                            <input type="file"  name="image"  />   
                            <div class="picture-area"><?php echo $picture; ?>                      </div>
                        </div>
                    </div>     
                </div>    
                               
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-10">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>  
                </div>
                <div class="row"> 
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Trạng thái</b></label>
                        <div class="col-md-10">                            
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
        var id           =   $('input[name="id"]');
       
        var sort_order   =   $('input[name="sort_order"]');
        var status       =   $('input[name="status"]');
        
        
        $(sort_order).closest('.form-group').removeClass("has-error");
        $(status).closest('.form-group').removeClass("has-error");        

       
        $(sort_order).closest('.form-group').find('span').empty().hide();
        $(status).closest('.form-group').find('span').empty().hide();        
    }
    function uploadFileImport(){    
        var token = $('input[name="_token"]').val();       
        var image=$('input[name="image"]');        
        var file_upload=$(image).get(0);
        var files = file_upload.files;
        var file  = files[0];    
        var frmdata = new FormData();        
        frmdata.append("image", file);
        frmdata.append("_token", token);
        $.ajax({ url: '<?php echo $linkUploadFile; ?>', method: 'post', data: frmdata, contentType: false, processData: false })
    }
    function deleteImage(){
        var xac_nhan = 0;
        var msg="Bạn có muốn xóa ?";
        if(window.confirm(msg)){ 
            xac_nhan = 1;
        }
        if(xac_nhan  == 0){
            return 0;
        }
        $(".picture-area").empty();
        $("input[name='image_hidden']").val("");        
    }
    function save(){
        var id=$('input[name="id"]').val();        
        var caption=$('textarea[name="caption"]').val();
        var alt=$('textarea[name="alt"]').val();
        var page_url=$('input[name="page_url"]').val();        
        var category_id=$('select[name="category_id"]').val();
        var image = $('input[name="image"]').val();
        if (image != ''){
            image = image.substr(image.lastIndexOf('\\') + 1);       
        }
        var image_hidden=$('input[name="image_hidden"]').val();         
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();   
        resetErrorStatus();
        var dataItem={
            "id":id,
            "caption":caption,
            "alt":alt,
            "page_url":page_url,        
            "category_id":category_id,      
            "image":image,            
            "image_hidden":image_hidden,                                
            "sort_order":sort_order,
            "status":status,
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                if(data.checked==1){
                    uploadFileImport();
                    window.location.href = "<?php echo $linkCancel; ?>";
                }else{
                    var data_error=data.error;                    
                    if(typeof data_error.sort_order               != "undefined"){
                        $('input[name="sort_order"]').closest('.form-group').addClass(data_error.sort_order.type_msg);
                        $('input[name="sort_order"]').closest('.form-group').find('span').text(data_error.sort_order.msg);
                        $('input[name="sort_order"]').closest('.form-group').find('span').show();                        
                    }
                    if(typeof data_error.status               != "undefined"){
                        $('input[name="status"]').closest('.form-group').addClass(data_error.status.type_msg);
                        $('input[name="status"]').closest('.form-group').find('span').text(data_error.status.msg);
                        $('input[name="status"]').closest('.form-group').find('span').show();
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