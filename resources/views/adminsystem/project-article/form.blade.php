@extends("adminsystem.master")
@section("content")
<?php 
$setting= getSettingSystem();
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');
$linkUploadFile         =   route('adminsystem.'.$controller.'.uploadFile');
$linkCreateAlias        =   route('adminsystem.'.$controller.'.createAlias');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"      onblur="createAlias()"   value="'.@$arrRowData['fullname'].'">'; 
 
$inputAlias             =   '<input type="text" class="form-control" name="alias"         disabled     value="'.@$arrRowData['alias'].'">';
$inputIntro             =   '<textarea   name="intro" rows="5" cols="100" class="form-control" >'.@$arrRowData['intro'].'</textarea>'; 
$inputContent           =   '<textarea   name="content" rows="2" cols="100" class="form-control" >'.@$arrRowData['content'].'</textarea>'; 

$inputDescription       =   '<textarea  name="description" rows="2" cols="100" class="form-control" >'.@$arrRowData['description'].'</textarea>'; 
$inputMetakeyword       =   '<textarea  name="meta_keyword" rows="2" cols="100" class="form-control" >'.@$arrRowData['meta_keyword'].'</textarea>'; 
$inputMetadescription   =   '<textarea   name="meta_description" rows="2" cols="100" class="form-control" >'.@$arrRowData['meta_description'].'</textarea>'; 
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"     value="'.@$arrRowData['sort_order'].'">';
$status                 =   (count($arrRowData) > 0) ? @$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");
$ddlProjectArticle      =   cmsSelectboxCategory("project_id","form-control",$arrProject,@$arrRowData['project_id'],"");
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"   value="'.@$id.'" />'; 
$picture                =   "";
$strImage               =   "";
$setting= getSettingSystem();
$article_width = $setting['article_width']['field_value'];
$article_height = $setting['article_height']['field_value'];  
if(count(@$arrRowData)>0){
    if(!empty(@$arrRowData["image"])){
        $picture        =   '<div class="col-sm-6"><center>&nbsp;<img src="'.asset("/upload/" . $article_width . "x" . $article_height . "-".@$arrRowData["image"]).'" style="width:100%" />&nbsp;</center></div><div class="col-sm-6"><a href="javascript:void(0);" onclick="deleteImage();"><img src="'.asset('public/adminsystem/images/delete-icon.png').'"/></a></div>';                        
        $strImage       =   @$arrRowData["image"];
    }        
}   
$inputPictureHidden     =   '<input type="hidden" name="image_hidden"   value="'.@$strImage.'" />';
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
                        <label class="col-md-2 control-label"><b>Tin tức</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                      
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Alias</b></label>
                        <div class="col-md-10">
                            <?php echo $inputAlias; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>     
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Chủ đề</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlProjectArticle; ?>
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
                        <label class="col-md-2 control-label"><b>Giới thiệu</b></label>
                        <div class="col-md-10">                            
                            <?php echo $inputIntro; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>    
                </div>     
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Chú thích</b></label>
                        <div class="col-md-10">                            
                            <?php echo $inputDescription; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                       
                </div>                                                               
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Meta keyword</b></label>
                        <div class="col-md-10">
                            <?php echo $inputMetakeyword; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Meta description</b></label>
                        <div class="col-md-10">                            
                            <?php echo $inputMetadescription; ?>
                            <span class="help-block"></span>
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
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Nội dung</b></label>
                        <div class="col-md-10">                            
                            <?php echo $inputContent; ?>
                            <span class="help-block"></span>
                            <script type="text/javascript" language="javascript">
                                CKEDITOR.replace('content',{
                                   height:300
                               });
                           </script>
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
        var alias                =   $('input[name="alias"]');
        var project_id  =   $('select[name="project_id"]');
        var sort_order           =   $('input[name="sort_order"]');
        var status               =   $('select[name="status"]');
        
        $(fullname).closest('.form-group').removeClass("has-error");
        
        $(alias).closest('.form-group').removeClass("has-error");
        $(project_id).closest('.form-group').removeClass("has-error");
        $(sort_order).closest('.form-group').removeClass("has-error");
        $(status).closest('.form-group').removeClass("has-error");        

        $(fullname).closest('.form-group').find('span').empty().hide();
        
        $(alias).closest('.form-group').find('span').empty().hide();
        $(project_id).closest('.form-group').find('span').empty().hide();
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
        var fullname=$('input[name="fullname"]').val();
        
        var alias=$('input[name="alias"]').val();
        
        var project_id=$('select[name="project_id"]').val();
        var image = $('input[name="image"]').val();
        if (image != ''){
            image = image.substr(image.lastIndexOf('\\') + 1);       
        }
        var image_hidden=$('input[name="image_hidden"]').val(); 
        var intro=$('textarea[name="intro"]').val();        
        var content=CKEDITOR.instances['content'].getData();
        var description=$('textarea[name="description"]').val();
        var meta_keyword=$('textarea[name="meta_keyword"]').val();
        var meta_description=$('textarea[name="meta_description"]').val();
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();   
        resetErrorStatus();
        var dataItem={
            "id":id,
            "fullname":fullname,
            
            "alias":alias,            
            "image":image,            
            "intro":intro,
            "content":content,
            "description":description,
            "meta_keyword":meta_keyword,
            "meta_description":meta_description,
            "project_id":project_id,            
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
                    if(typeof data_error.fullname               != "undefined"){
                        $('input[name="fullname"]').closest('.form-group').addClass(data_error.fullname.type_msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').text(data_error.fullname.msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').show();                        
                    }
                    
                    if(typeof data_error.alias                  != "undefined"){
                        $('input[name="alias"]').closest('.form-group').addClass(data_error.alias.type_msg);
                        $('input[name="alias"]').closest('.form-group').find('span').text(data_error.alias.msg);
                        $('input[name="alias"]').closest('.form-group').find('span').show();                       
                    }
                    if(typeof data_error.project_id               != "undefined"){
                        $('select[name="project_id"]').closest('.form-group').addClass(data_error.project_id.type_msg);
                        $('select[name="project_id"]').closest('.form-group').find('span').text(data_error.project_id.msg);
                        $('select[name="project_id"]').closest('.form-group').find('span').show();                        
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
    function createAlias(){
        var id=$('input[name="id"]').val();   
        var fullname    = $('input[name="fullname"]').val();
        var token       = $('form[name="frm"] > input[name="_token"]').val();     
        var dataItem={      
            "id":id,      
            "fullname":fullname,            
            "_token": token
        };   
        $('input[name="alias"]').val(''); 
        resetErrorStatus();    
        $.ajax({
            url: '<?php echo $linkCreateAlias; ?>',
            type: 'POST',
            data: dataItem,            
            async: false,
            success: function (data) {                
                if(data.checked==1){
                    $('input[name="alias"]').val(data.alias); 
                }else{                    
                    var data_error=data.error;
                    if(typeof data_error.fullname               != "undefined"){
                        $('input[name="fullname"]').closest('.form-group').addClass(data_error.fullname.type_msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').text(data_error.fullname.msg);
                        $('input[name="fullname"]').closest('.form-group').find('span').show();                        
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