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
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Bathroom</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>					
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Kitchen &amp; Dinning</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
					</div>				
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="margin-top-15">
					<div class="relative">
						<center><figure><center><a href="javascript:void(0);"><img src="<?php echo asset('upload/bathroom.jpg'); ?>"></a></center></figure></center>
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Bedroom</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
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
						<div class="walking-box-title"><a href="javascript:void(0);"><span>Leisure &amp; Exercise</span><span class="margin-left-5"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a></div>
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
@endsection()               