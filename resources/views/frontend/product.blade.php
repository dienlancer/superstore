<?php 
use App\ProductModel;
use App\ProductParamModel;
use App\CategoryParamModel;
use App\CategoryProductModel;
use App\GroupMemberModel;
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
if(count($item) > 0){
	$id=$item["id"];
	$fullname = $item["fullname"];
	$intro=$item["intro"];
	$detail=$item['detail'];  
	$small_img=get_product_thumbnail($item['image']);
	$large_img=asset('upload/'.$item['image']) ;
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row                =   ProductModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */
	/* begin setting */
	$address=$setting['address']['field_value'];
	$email_to=$setting['email_to']['field_value'];
	$contacted_person=$setting['contacted_person']['field_value'];
	$telephone=$setting['telephone']['field_value'];
	$office=$setting['office']['field_value'];
	$product_width = $setting['product_width']['field_value'];
	$product_height = $setting['product_height']['field_value'];
	/* end setting */    	
	$arrPicture=json_decode($item['child_image']);
	$arrPicture[]=$item['image']; 	
	$dataCategory=CategoryProductModel::find((int)@$item['category_id'])->toArray();   
	$breadcrumb= getBreadCrumbCategoryProduct($dataCategory);	
    ?>    
    
        <div class="breadcrumb-title margin-top-15">
            <?php echo $breadcrumb; ?>
        </div>
        <form name="frm-product-detail" method="POST" enctype="multipart/form-data">
        	{{ csrf_field() }}            
            <div class="col-lg-4 no-padding-left">
                <div class="margin-top-15">
                    <div class="image-detail"><img class="zoom_img" src="<?php echo $small_img; ?>" data-zoom-image="<?php echo $large_img; ?>" /></div>
                </div>
                <?php 
                if(count($arrPicture) > 0){
                	?>
                	<div class="margin-top-5">
                		<script type="text/javascript" language="javascript">
                			$(document).ready(function(){
                				$(".product-thumbnail").owlCarousel({
                					autoplay:true,                    
                					loop:true,
                					margin:5,                        
                					nav:true,            
                					mouseDrag: true,
                					touchDrag: true,                                
                					responsiveClass:true,
                					responsive:{
                						0:{
                							items:1
                						},
                						600:{
                							items:1
                						},
                						1000:{
                							items:4
                						}
                					}
                				});
                				var chevron_left='<i class="fa fa-chevron-left"></i>';
                				var chevron_right='<i class="fa fa-chevron-right"></i>';
                				$("div.product-thumbnail div.owl-prev").html(chevron_left);
                				$("div.product-thumbnail div.owl-next").html(chevron_right);
                			});                
                		</script>
                		<div class="owl-carousel product-thumbnail owl-theme">
                			<?php 
                			for($i=0;$i<count($arrPicture);$i++){                                            
                				$small_thumbnail=asset('/upload/'.$product_width.'x'.$product_height.'-'.$arrPicture[$i]);    
                				$large_thumbnail=asset('/upload/'.$arrPicture[$i]);                            
                				?>
                				<div>									
                					<a href="javascript:void(0)" onclick="changeImage('<?php echo $small_thumbnail; ?>','<?php echo $large_thumbnail; ?>');"><img  src="<?php echo $small_thumbnail; ?>" width="<?php echo (int)$product_width/5; ?>" /></a>									                                        
                				</div>
                				<?php                                    
                			}                           
                			?>        
                		</div>
                	</div>
                	<?php
                }
                ?>                
            </div>
            <div class="col-lg-8 no-padding-left">
                <h1 class="margin-top-15 product-detail-title">
                    <?php echo $title; ?>
                </h1>
                <div class="margin-top-5">
                    <b>Lượt xem:</b>&nbsp;<?php echo $count_view; ?>
                </div>
                <hr class="product-ngang" />
                <div class="margin-top-5">
                	<?php 
                	$price=$item['price'];
                	$sale_price=$item['sale_price'];
                	$html_price='';                     
                	if((int)@$sale_price > 0){              
                		$price_on_html ='<span class="price-detail-on">'.fnPrice($sale_price).'</span>';
                		$price_off_html='<span class="price-detail-off">Giá cũ: '.fnPrice($price).'</span>' ;                 
                		$html_price='<div class="col-lg-2 no-padding-left">'.$price_on_html.'</div><div class="col-lg-10">'.$price_off_html.'</div><div class="clr"></div>'  ;              
                	}else{
                		$html_price='<span class="price-on">'.fnPrice($price).'</span>' ;                  
                	}   	
                	echo $html_price;
                	?>
                </div>
                <div class="box-product-param">                	
                	<!-- begin xuất xứ -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['xuat-xu'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div >
                					<div class="col-lg-2 no-padding-left"><b>Xuất xứ</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end xuất xứ -->    
                	<!-- begin thương hiệu -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['thuong-hieu'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Thương hiệu</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end thương hiệu --> 
                	<!-- begin chất liệu -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['chat-lieu'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Chất liệu</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end chất liệu --> 
                	<!-- begin Nhà thiết kế -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['nha-thiet-ke'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Nhà thiết kế</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end Nhà thiết kế --> 
                	<!-- begin đơn vị -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['don-vi'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Đơn vị</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end đơn vị -->   
                	<!-- begin màu -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['mau'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Màu</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-color" style="background: <?php echo $value['param_value']; ?>"></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end màu -->  
                	<!-- begin kích thước -->
                	<?php 
                	$dataParamFather=CategoryParamModel::whereRaw('alias = ?',['kich-thuoc'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                	if(count($dataParamFather) > 0){
                		$dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                		$arr_id=array();
                		if(count($dataParamChildren) > 0){
                			foreach ($dataParamChildren as $key => $value){
                				$arr_id[]=(int)@$value['id'];
                			}
                			$dataParam=DB::table('product_param')
                			->whereIn('product_param.param_id',$arr_id)
                			->where('product_param.product_id',(int)@$id)
                			->select('id')
                			->get()
                			->toArray();
                			if(count($dataParam) > 0){
                				?>
                				<div class="margin-top-10">
                					<div class="col-lg-2 no-padding-left"><b>Kích thước</b></div>
                					<div class="col-lg-10">
                						<?php 
                						foreach ($dataParamChildren as $key => $value) {
                							$dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                							if(count($dataParam) > 0){
                								?><div class="block-size"><?php echo $value['fullname']; ?></div><?php
                							}
                						}
                						?>
                					</div> 
                					<div class="clr"></div>               	
                				</div>
                				<?php
                			}
                		}
                		?>                	
                		<?php
                	}
                	?>                
                	<!-- end kích thước -->  
                	<div class="margin-top-10">
                		<div class="col-lg-2 no-padding-left"><div class="padding-top-10"><b>Số lượng</b></div></div>
                		<div class="col-lg-10">
                			<input name="qty" autocomplete="off" type="number" min="1" max="9999" class="inpt-qty" required="" value="1">
                			<span class="add-qty" title="Thêm" 	onclick="eventQty('add');">+</span>
                			<span class="sub-qty" title="Bớt" 	onclick="eventQty('sub');">-</span>
                		</div>
                		<div class="clr"></div>
                	</div>      
                </div>   
                <div class="margin-top-15">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#modal-alert-add-cart" onclick="addToCart();" class="add-to-cart"><i class="fas fa-shopping-cart"></i><span class="margin-left-15">Thêm vào giỏ hàng</span>
                    </a>                    
                </div>                                
            </div>
            <div class="clr"></div>
        </form>
        <div class="margin-top-25 product-detail-content">
            Chi tiết sản phẩm
        </div>
        <div class="margin-top-15">
            <?php echo $detail; ?>
        </div>        
        <?php              
        $category_id=$item['category_id'];               
        $dataProduct=DB::table('product')                        
        ->select('product.id','product.alias','product.fullname','product.image','product.intro','product.price','product.sale_price')
        ->where('product.category_id', $category_id)
        ->where('product.id','<>',(int)@$id)
        ->where('product.status',1)       
        ->groupBy('product.id','product.alias','product.fullname','product.image','product.intro','product.price','product.sale_price')
        ->orderBy('product.created_at', 'desc')                
        ->get()
        ->toArray();         
        $dataProduct=convertToArray($dataProduct);     
        if(count($dataProduct) > 0){
        	?>
        	<div class="margin-top-15 product-detail-content">
        		Sản phẩm liên quan
        	</div> 
        	<div class="margin-top-15">
        		<script type="text/javascript" language="javascript">
        			$(document).ready(function(){
        				$(".product-thumbnail").owlCarousel({
        					autoplay:false,                    
        					loop:true,
        					margin:25,                        
        					nav:true,            
        					mouseDrag: false,
        					touchDrag: false,                                
        					responsiveClass:true,
        					responsive:{
        						0:{
        							items:1
        						},
        						600:{
        							items:1
        						},
        						1000:{
        							items:4
        						}
        					}
        				});
        				var chevron_left='<i class="fa fa-chevron-left"></i>';
        				var chevron_right='<i class="fa fa-chevron-right"></i>';
        				$("div.product-thumbnail div.owl-prev").html(chevron_left);
        				$("div.product-thumbnail div.owl-next").html(chevron_right);
        			});                
        		</script>
        		<div class="owl-carousel product-thumbnail owl-theme">
        			<?php 
        			foreach($dataProduct as $key => $value){
        				$id=$value['id'];
        				$alias=$value['alias'];
        				$fullname=$value['fullname'];
        				$fullname_excerpt=substr($fullname, 0,100);
        				$permalink=route('frontend.index.index',[$alias]) ;
        				$featuredImg =get_product_thumbnail($value['image']) ;	
        				$price=$value['price'];
        				$sale_price=$value['sale_price'];
        				$html_price='';                     
        				if((int)@$sale_price > 0){              
        					$price_on_html ='<span class="price-on">'.fnPrice($sale_price).'</span>';
        					$price_off_html='<span class="price-off">'.fnPrice($price).'</span>' ;                 
        					$html_price='<div class="sale-price">'.$price_on_html.'</div><div class="old-price">'.$price_off_html.'</div><div class="clr"></div>' ;              
        				}else{
        					$html_price='<span class="price-on">'.fnPrice($price).'</span>' ;                  
        				}   	
        				?>
        				<div>
        					<div class="margin-top-15 box-product">
        						<div>
        							<center><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" /></a></figure></center>
        						</div>		
        						<div class="margin-top-5">
        							<?php echo $html_price; ?>
        						</div>							
        						<div class="margin-top-5 box-product-title">
        							<a href="<?php echo $permalink; ?>" title="<?php echo $fullname; ?>"  ><?php echo $fullname_excerpt; ?></a>
        						</div>
        					</div>					
        				</div>
        				<?php
        			}
        			?>
        		</div>
        	</div>
        	<?php 
        }                     
}
?>
<script language="javascript" type="text/javascript">
    $('.zoom_img').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 750
    });
    function changeImage(small_thumbnail,large_thumbnail){    
        var image_detail=$(".image-detail");
        var imghtml='<img class="zoom_img" src="'+small_thumbnail+'" data-zoom-image="'+large_thumbnail+'">';        
        $(image_detail).empty();
        $(image_detail).append(imghtml);
        $('.zoom_img').elevateZoom({
            zoomType: "inner",
            cursor: "crosshair",
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 750
        });
    }
    function eventQty(evt){
    	var quantity=$('input[name="qty"]').val();
    	var qty=parseInt(quantity);
    	switch(evt){
    		case 'add':
    			qty = qty + 1;
    		break;
    		case 'sub':
    			qty = qty - 1;
    		break;
    	}    	
    	if(qty == 0){
    		return false;
    	}
    	$('input[name="qty"]').val(qty);
    }    
    function addToCart(){
        var token = $('input[name="_token"]').val();
        var quantity = $('input[name="qty"]').val();
        var dataItem={
            "id":<?php echo @$item['id']; ?>,            
            "quantity":quantity,
            "_token": token
        };
        $.ajax({
            url: '<?php echo route("frontend.index.addToCart"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                var thong_bao='Sản phẩm đã được thêm vào trong <a href="'+data.permalink+'" class="comproduct49" >giỏ hàng</a> ';               
                $(".cart-total").empty();           
                $(".modal-body").empty();       
                $(".cart-total").text(data.quantity);           
                $(".modal-body").append(thong_bao);         
            },
            error : function (data){
                
            },
            beforeSend  : function(jqXHR,setting){
                
            },
        });
    }
</script> 