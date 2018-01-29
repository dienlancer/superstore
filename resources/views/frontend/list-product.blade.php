<?php 
$setting=getSettingSystem();
$controller='product';
$linkLoadData		=	route('frontend.'.$controller.'.loadData');
$ddlCategoryProduct     =   cmsSelectboxCategory('category_id','category_id', 'form-control', $arrCategoryProductRecursive, 0,"");
$inputFilterSearch 		=	'<input type="text" class="form-control" name="filter_search"          value="">';
?>
<h2 class="tieu-de margin-top-15">
	Danh sách sản phẩm
</h2>		
<form method="post" name="frm" class="margin-top-5 box-article" enctype="multipart/form-data">
	<div class="portlet-body">
		<div class="row">
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
                        <button type="button" class="btn dark btn-outline sbold uppercase btn-product" onclick="getList();">Tìm kiếm</button>                                         
                    </div>                
                </div>                
        </div>   
		<table class="table table-striped table-bordered table-hover table-checkable order-column" id="tbl-product">
			<thead>
				<tr>
					<th width="1%"><input type="checkbox" onclick="checkAllAgent(this)"  name="checkall-toggle"></th>  						
					<th>Sản phẩm</th>
					<th>Alias</th>
					<th>Nhóm</th>						
					<th width="1%">Hình ảnh</th>
					<th width="10%">Sắp xếp</th>
					<th width="10%">Trạng thái</th>							
					<th width="1%">Sửa</th>  
					<th width="1%">Xóa</th>                     
				</tr>
			</thead>
			<tbody>                                                
			</tbody>
		</table>
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
	$(document).ready(function(){
		
		getList();
	});
</script>
