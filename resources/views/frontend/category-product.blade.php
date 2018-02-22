@extends("frontend.master")
@section("content")
<?php 
use Illuminate\Support\Facades\DB;
$seo_alias="";
if(isset($alias)){
	$seo_alias=$alias;
}
$data_category=array();
getRecursiveCategoryProduct((int)@$category['parent_id'],$data_category);
$theme_location='';
if(count($data_category) > 0){	
	$theme_location=$data_category[count($data_category)-1]['alias'];
}else{
	$theme_location=$category['alias'];
}
?>
<div class="breadcrumb-bg">
	<div class="container">
		<div class="col-lg-12">
			<div class="breadcrumb-title">
				<?php echo $breadcrumb; ?>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="col-lg-12">
		<div class="relative">
			<?php 
			$data_slideshow=getBanner($theme_location);
			if(count($data_slideshow) > 0){
				$slides=$data_slideshow["items"];
				if(count($slides) > 0){
					?>
					<div class="slideshow-category">
						<script type="text/javascript" language="javascript">        
							$(document).ready(function(){
								$(".slick-slideshow").slick({
									dots: false,
									infinite:false,
									autoplay:true,
									arrows:false,
									adaptiveHeight:true,
									slidesToShow: 1,
									slidesToScroll: 1,        
								});  
							});     
						</script>
						<div class="slick-slideshow">    
							<?php 
							foreach ($slides as $key => $value) {
								$alt=$value["alt"];
								$featuredImg=asset('upload/'.$value["image"]);
								?>
								<div><img src="<?php echo $featuredImg; ?>" alt="<?php echo $alt; ?>" /></div>
								<?php 
							}
							?>              
						</div>
					</div>
					<?php
				}  
			}
			?>	
			<div class="nitendo">
				<div class="col-lg-3 no-padding-left">
					<div class="cate-product-horizontal-right">
						<?php     
						$args = array(                         
							'menu_class'            => 'cateprodhorizontalright', 					                     
							'before_wrapper'        => '',
							'before_title'          => '',
							'after_title'           => '',
							'before_wrapper_ul'     =>  '',
							'after_wrapper_ul'      =>  '',
							'after_wrapper'         => ''     ,
							'link_before'       	=> '', 
							'link_after'        	=> '',                                        
							'theme_location'        => $theme_location ,
							'menu_li_actived'       => 'current-menu-item',
							'menu_item_has_children'=> 'menu-item-has-children',
							'alias'                 => $seo_alias
						);                    
						wp_nav_menu($args);
						?>                 
						<div class="clr"></div>
					</div>
				</div>
				<div class="col-lg-9"></div>				
			</div>
		</div>	
	</div>
</div>
<form method="post" class="frm" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<div class="container">
		<div class="row">
			<?php 	
			if(count($items) > 0){
				$k=1;			
				foreach ($items as $key => $value) {
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
					<div class="col-sm-3">
						<div class="margin-top-15 box-product">
							<div>
								<center><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" /></a></figure></center>
							</div>		
							<div class="margin-top-5">
								<?php echo $html_price; ?>
							</div>							
							<div class="margin-top-5 box-product-title">
								<a href="<?php echo $permalink; ?>" title="<?php echo $fullname; ?>" ><?php echo $fullname_excerpt; ?></a>
							</div>
						</div>					
					</div>
					<?php			
					if($k%4==0 || $k==count($items)){
						echo '<div class="clr"></div>';
					}
				}
			}	
			?>
		</div>
		<div class="margin-top-15">
			<?php 
			if(count($items) > 0){
				echo $pagination->showPagination();
			}  
			?>
		</div>	
	</div>
</form>
@endsection()   