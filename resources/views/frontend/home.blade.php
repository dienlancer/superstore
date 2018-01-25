@extends("frontend.master")
@section("content")
<?php 
use App\ProjectModel;
$setting=getSettingSystem();
$telephone=$setting['telephone']['field_value'];
$email_to=$setting['email_to']['field_value'];
$facebook_url=$setting['facebook_url']['field_value'];
$twitter_url=$setting['twitter_url']['field_value'];
$google_plus=$setting['google_plus']['field_value'];
$youtube_url=$setting['youtube_url']['field_value'];
$instagram_url=$setting['instagram_url']['field_value'];
$pinterest_url=$setting['pinterest_url']['field_value'];   
$company=$setting['contacted_person']['field_value'];
?>
<div class="wrapper-notice">
	<div class="container">
		<div class="col-lg-3">
			<div class="supplied-block">
				<center><img src="<?php echo asset('upload/icon-nhs.png'); ?>"><span class="margin-left-5"><a href="javascript:void(0);"><b>WE SUPPLY THE NHS</b></a></span></center>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="supplied-block">
				<center><img src="<?php echo asset('upload/icon-box.png'); ?>"><span class="margin-left-5"><a href="javascript:void(0);"><b>WE SUPPLY THE NHS</b></a></span></center>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="supplied-block-2">
				<div><center><a href="javascript:void(0);"><b>WE SUPPLY THE NHS</b></a></center></div>
				<div><center><img src="<?php echo asset('upload/icon-creditcards2.png'); ?>"></center></div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="supplied-block">
				<center><img src="<?php echo asset('upload/emotion-happy.ico'); ?>" width="25" height="25" ><span class="margin-left-5"><a href="javascript:void(0);"><b>WE SUPPLY THE NHS</b></a></span></center>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>
<div class="wapper-body">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Phòng tắm</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>					
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Phòng ăn</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>				
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Phòng ngủ</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>						
				</div>		
			</div>
			<div class="clr"></div>
		</div>	
		<div class="row">
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Phòng thể dục</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>				
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Sitting room</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>	
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>In the car</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>	
				</div>			
			</div>
			<div class="clr"></div>
		</div>	
		<div class="row">
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Shopping Trolleys</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>				
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Walking stick &amp; Accessories</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>	
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Rollators</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>	
				</div>			
			</div>
			<div class="clr"></div>
		</div>	
	</div>
</div>
<div class="bg-partner">
	<?php 
	$data=getBanner("doi-tac");
	if(count($data) > 0){
		$items=$data["items"];
		if(count($items) > 0){
			?>
			<div class="container padding-top-15 padding-bottom-15">
				<div class="col-lg-12">
					<script type="text/javascript" language="javascript">
						$(document).ready(function(){
							$(".partner").owlCarousel({
								autoplay:true,                    
								loop:true,
								margin:25,                        
								nav:false,            
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
										items:6
									}
								}
							});
							var chevron_left='<i class="fa fa-chevron-left"></i>';
							var chevron_right='<i class="fa fa-chevron-right"></i>';
							$("div.partner div.owl-prev").html(chevron_left);
							$("div.partner div.owl-next").html(chevron_right);
						});                
					</script>
					<div class="owl-carousel partner owl-theme">
						<?php 
						foreach($items as $key => $value){
							$featuredImg=asset('upload/'.$value['image']) ;
							$page_url=$value['page_url'];
							?>
							<div>
								<a href="<?php echo $page_url; ?>" target="_blank"><img src="<?php echo $featuredImg; ?>" /></a>
							</div>
							<?php
						}
						?>
					</div>
				</div>			
			</div>  
			<?php
		}  
	}
	?>
</div>
@endsection()               