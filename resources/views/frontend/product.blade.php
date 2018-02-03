<?php 
use App\ProductModel;
use App\ProductParamModel;
use App\CategoryParamModel;
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
    /* end setting */    
    /* begin category */
    $dataProductCategory=DB::table('category_product')
    ->join('product','category_product.id','=','product.category_id')     
    ->select('category_product.id','category_product.fullname','category_product.alias')
    ->where('product.id','=',(int)@$id)                    
    ->groupBy('category_product.id','category_product.fullname','category_product.alias')
    ->orderBy('category_product.sort_order','asc')
    ->get()->toArray();
    $arr_category_id=array();
    $arr_category_name=array(); 
    $category_name='';  
    if(count($dataProductCategory) > 0){        
        $dataProductCategory=convertToArray($dataProductCategory);
        foreach ($dataProductCategory as $key => $value) {
            $arr_category_id[]=$value["id"];
            $permalink=route('frontend.index.index',[$value['alias']]);
            $arr_category_name[]='<a href="'.$permalink.'">'.$value["fullname"].'</a>' ;                        
        }       
        $category_name=implode(' / ', $arr_category_name);      
    }       
    /* end category */
    ?>    
    <div class="margin-top-15">
        <?php       
    if(empty($breadcrumb)){
        ?>
        <div class="tieu-de">
            <?php echo $title; ?>       
        </div>
        <?php
    }else{
        ?>
        <div class="breadcrumb-title">
            <?php echo $breadcrumb; ?>
        </div>
        <?php
    }   
    ?>  
        <div>
            <div class="col-lg-4 no-padding-left">
                <div class="margin-top-15">
                    <img class="zoom_img" src="<?php echo $small_img; ?>" data-zoom-image="<?php echo $large_img; ?>" />
                </div>
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
                		$price_off_html='<span class="price-detail-off margin-left-15">Giá cũ: '.fnPrice($price).'</span>' ;                 
                		$html_price=$price_on_html.$price_off_html ;              
                	}else{
                		$html_price='<span class="price-on">'.fnPrice($price).'</span>' ;                  
                	}   	
                	echo $html_price;
                	?>
                </div>
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
                			<div class="margin-top-10">
                				<div class="col-lg-2 no-padding-left"><b>Xuất xứ&nbsp;:</b></div>
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
                				<div class="col-lg-2 no-padding-left"><b>Thương hiệu&nbsp;:</b></div>
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
                				<div class="col-lg-2 no-padding-left"><b>Đơn vị&nbsp;:</b></div>
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
                				<div class="col-lg-2 no-padding-left"><b>Màu&nbsp;:</b></div>
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
                				<div class="col-lg-2 no-padding-left"><b>Kích thước&nbsp;:</b></div>
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
            </div>
            <div class="clr"></div>
        </div>
        <div class="margin-top-15 product-detail-content">
            Chi tiết sản phẩm
        </div>
        <div class="margin-top-15">
            <?php echo $detail; ?>
        </div>
        <div class="margin-top-15 thuong-hieu">
            <a href="<?php echo url('/'); ?>"><?php echo $contacted_person; ?></a> – nhà nhập khẩu và phân phối gỗ nguyên liệu nhập khẩu Mỹ.
        </div>
        <div class="margin-top-15">
            <b>Thông tin liên hệ:</b>&nbsp;<?php echo $contacted_person; ?>
        </div>        
        <div class="margin-top-5">
            <b>VPGD:</b> <?php echo $office; ?>
        </div>        
        <div class="margin-top-5">
            <b>Email:</b> <?php echo $email_to; ?>
        </div>
        <div class="margin-top-5">
            <b>Website:</b> <?php echo url('/'); ?>
        </div>
        <div class="margin-top-5">
            <b>Hotline:</b> <?php echo $telephone; ?>
        </div>              
        <?php                     
        
        if(count($dataProductCategory) > 0){            
            $dataProduct=DB::table('product')                        
            ->select('product.id','product.alias','product.fullname','product.image','product.intro')
            ->whereIn('product.category_id', $arr_category_id)
            ->where('product.id','<>',(int)@$id)
            ->where('product.status',1)       
            ->groupBy('product.id','product.alias','product.fullname','product.image','product.intro')
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
                            $(".related-products").owlCarousel({
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
                            $("div.related-products div.owl-prev").html(chevron_left);
                            $("div.related-products div.owl-next").html(chevron_right);
                        });                
                    </script>
                    <div class="owl-carousel related-products owl-theme">
                        <?php 
                        foreach($dataProduct as $key => $value){
                            $featuredImg=get_product_thumbnail($value['image']) ;
                            $permalink=route('frontend.index.index',[$value['alias']]);
                            $title=$value['fullname'];
                            ?>
                            <div>
                                <div><center><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>"></a></figure></center></div>
                                <div class="margin-top-5"><a href="<?php echo $permalink; ?>"><b><?php echo $title; ?></b></a></div>
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
    </div>
    <?php
}
?>
<script language="javascript" type="text/javascript">
    jQuery('.zoom_img').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 750
    });
</script> 