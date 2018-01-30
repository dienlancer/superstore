<?php 
$setting=getSettingSystem();
$linkNew			=	route('frontend.'.$controller.'.getForm',['add']);
$linkLoadData		=	route('frontend.'.$controller.'.loadData');
$linkCancel			=	route('frontend.'.$controller.'.getList');
$linkDelete			=	route('frontend.'.$controller.'.deleteItem');
$linkTrash			=	route('frontend.'.$controller.'.trash');
$ddlCategoryProduct     =   cmsSelectboxCategory('category_id','category_id', 'form-control', $arrCategoryProductRecursive, 0,"");
$inputFilterSearch 		=	'<input type="text" class="form-control" name="filter_search"          value="">';
?>
<h2 class="tieu-de margin-top-15">
	Danh sách sản phẩm
</h2>		
<form method="post" name="frm" class="margin-top-5 box-article frm-vip" enctype="multipart/form-data">
	<div class="portlet-body">
		<div class="portlet-title padding-top-15">
			<div class="alert alert-success" id="alert" style="display: none">
				<strong>Success!</strong> 
			</div>			  
			<div class="actions">
				<div class="table-toolbar">
					<div class="row">
						<div class="col-md-12">													
							<a href="<?php echo $linkNew; ?>" class="btn green">Thêm mới <i class="fa fa-plus"></i></a> 							
							<a href="javascript:void(0)" onclick="trash();" class="btn red">Xóa <i class="fa fa-trash"></i></a> 	
						</div>                                                
					</div>
				</div>    
			</div>                                 
		</div>	
		<div class="row margin-top-15">
			<div class="col-md-4">
				<div><b>Loại sản phẩm</b>  </div>
				<div><?php echo $ddlCategoryProduct ; ?></div>
			</div>            
			<div class="col-md-4">
				<div><b>Sản phẩm</b>  </div>
				<div><?php echo $inputFilterSearch; ?></div>
			</div>            
			<div class="col-md-4">
				<div>&nbsp;</div>
				<div>
					<button type="button" class="btn" onclick="getList();">Tìm kiếm</button>                                         
				</div>                
			</div>                
		</div>   	
		<div class="portlet-body margin-top-15">	
			<div class="col-md-12">
				<table class="table table-striped table-bordered table-hover table-checkable order-column" id="tbl-product">
					<thead>
						<tr>
							<th width="1%"><input type="checkbox" onclick="checkAllAgent(this)"  name="checkall-toggle"></th>  						
							<th>Sản phẩm</th>
							<th>Alias</th>
							<th>Nhóm</th>						
							<th width="1%">Hình ảnh</th>        					
							<th width="10%">Trạng thái</th>							
							<th width="1%">Sửa</th>  
							<th width="1%">Xóa</th>                     
						</tr>
					</thead>
					<tbody>                                                
					</tbody>
				</table>
			</div>	
			<div class="clr"></div>			
		</div>	
	</div>
</form>
<script type="text/javascript" language="javascript">	
	function getList() {  	
		var token = $('input[name="_token"]').val(); 
        var category_id=$('select[name="category_id"]').val();
        var filter_search=$('input[name="filter_search"]').val();        
        var dataItem={            
            '_token': token,
            'filter_search':filter_search,
            'category_id':category_id,
            
        };       
		$.ajax({
			url: '<?php echo $linkLoadData; ?>',
			type: 'POST', 
			data: dataItem,
			success: function (data, status, jqXHR) {  
				
				
				vProductTable.clear().draw();
				vProductTable.rows.add(data).draw();
				spinner.hide();
			},
			beforeSend  : function(jqXHR,setting){
				spinner.show();
			},
		});
	}
	function checkWithList(this_checkbox){
		var dr = vProductTable.row( $(this_checkbox).closest('tr') ).data();       		
		if(parseInt(dr['is_checked']) == 0){
			dr['checked'] ='<input type="checkbox" checked onclick="checkWithList(this)" name="cid" />';
			dr['is_checked'] = 1;
		}else{
			dr['checked'] ='<input type="checkbox" onclick="checkWithList(this)" name="cid" />';
			dr['is_checked'] = 0;
		}
		vProductTable.row( $(this_checkbox).closest('tr') ).data(dr);
	}	
	function deleteItem(id){		
		var xac_nhan = 0;
		var msg="Bạn có muốn xóa ?";
		if(window.confirm(msg)){ 
			xac_nhan = 1;
		}
		if(xac_nhan  == 0){
			return 0;
		}
		var token 	 = $('input[name="_token"]').val();   
		var category_id=$('select[name="category_id"]').val();
		var dataItem ={   
			'id':id,			
			'category_id':category_id,
			'_token': token
		};
		$.ajax({
			url: '<?php echo $linkDelete; ?>',
			type: 'POST', 			
			data: dataItem,
			success: function (data, status, jqXHR) {  				
				alert('Đã xoá');               		
				vProductTable.clear().draw();
				vProductTable.rows.add(data.data).draw();
				spinner.hide();
			},
			beforeSend  : function(jqXHR,setting){
				spinner.show();
			},
		});
		$("input[name='checkall-toggle']").prop("checked",false);
	}	
	function trash(){	
		var xac_nhan = 0;
		var msg="Bạn có muốn xóa ?";
		if(window.confirm(msg)){ 
			xac_nhan = 1;
		}
		if(xac_nhan  == 0){
			return 0;
		}
		var token 	= 	$('input[name="_token"]').val();   
		var category_id=$('select[name="category_id"]').val();
		var dt 		= 	vProductTable.data();
		var str_id	=	"";		
		for(var i=0;i<dt.length;i++){
			var dr=dt[i];
			if(dr.is_checked==1){
				str_id +=dr.id+",";	              
			}
		}		
		var dataItem ={   
			'str_id':str_id,	
			'category_id':category_id,			
			'_token': token
		};
		$.ajax({
			url: '<?php echo $linkTrash; ?>',
			type: 'POST', 
			             
			data: dataItem,
			success: function (data, status, jqXHR) {
				alert('Đã xoá');               		
				vProductTable.clear().draw();
				vProductTable.rows.add(data.data).draw();
				spinner.hide();
			},
			beforeSend  : function(jqXHR,setting){
				spinner.show();
			},
		});
		$("input[name='checkall-toggle']").prop("checked",false);
	}
	$(document).ready(function(){		
		getList();
	});
</script>
