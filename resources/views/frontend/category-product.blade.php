<form method="post" class="frm" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<?php 		
	if(empty($breadcrumb)){
		?>
		<div class="tieu-de margin-top-15">
			<?php echo $title; ?>		
		</div>
		<?php
	}else{
		?>
		<div class="breadcrumb-title margin-top-15">
			<?php echo $breadcrumb; ?>
		</div>
		<?php
	}	
	?>
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
                    $sale_price_html ='<span class="price-regular">'.fnPrice($sale_price).'</span>';
                    $price_old_html='<span class="price-old">'.fnPrice($price).'</span>' ;                 
                    $html_price='<div class="sale-price">'.$sale_price_html.'</div><div class="old-price">'.$price_old_html.'</div><div class="clr"></div>' ;              
                }else{
                    $html_price='<span class="price-regular">'.fnPrice($price).'</span>' ;                  
                }   					
				?>
				<div class="col-sm-3 no-padding-left">
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
</form>