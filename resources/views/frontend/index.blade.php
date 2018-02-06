<?php 
$seo_alias="";
if(isset($alias)){
    $seo_alias=$alias;
}
?>
@extends("frontend.master")
@section("content")
<?php 
$wrapper='';
$col_left='';
$col_right='';
switch ($component) {
    case 'account':
    case 'security':    
    case "list-product":
    case "list-media":
    case "list-invoice":
    case "form-product":                
    case "form-media":
    case "form-invoice":
        $wrapper='container-fluid';
        $col_left='col-lg-2';
        $col_right='col-lg-10';
    break;
    default:        
        $wrapper='container';
        $col_left='col-lg-3';
        $col_right='col-lg-9';
    break;
}
?>
<div class="<?php echo $wrapper; ?> box-inner-content">    
    <?php             
    switch ($layout){
        case 'two-column':  
        ?>
        <div class="<?php echo $col_left; ?>">
            <?php                                      
            $argsTinTucSuKien = array(                         
                'menu_class'            => 'categoryarticle',                            
                'before_wrapper'        => '<div class="box-category margin-top-15">',
                'before_title'          => '<h2 class="menu-right-title">',
                'after_title'           => '</h2>',
                'before_wrapper_ul'     =>  '<div>',
                'after_wrapper_ul'      =>  '</div>',
                'after_wrapper'         => '</div>'     ,
                'link_before'           => '', 
                'link_after'            => '',                                                                    
                'theme_location'        => 'tin-tuc-su-kien-menu' ,
                'menu_li_actived'       => 'current-menu-item',
                'menu_item_has_children'=> 'menu-item-has-children',
                'alias'                 => $seo_alias,
            );    
            $argsDanhMucSanPham = array(                         
                'menu_class'            => 'categoryproduct',                            
                'before_wrapper'        => '<div class="box-category margin-top-15">',
                'before_title'          => '<h2 class="menu-right-title">',
                'after_title'           => '</h2>',
                'before_wrapper_ul'     =>  '<div class="category-product-wrapper">',
                'after_wrapper_ul'      =>  '</div>',
                'after_wrapper'         => '</div>'     ,
                'link_before'           => '', 
                'link_after'            => '',                                                                    
                'theme_location'        => 'danh-muc-san-pham-menu' ,
                'menu_li_actived'       => 'current-menu-item',
                'menu_item_has_children'=> 'menu-item-has-children',
                'alias'                 => $seo_alias,
            );    
            switch ($component) {
                case 'articles':
                case 'category-article':
                case 'article':
                case 'page':       
                case 'projects':   
                case 'project':      
                case 'project-article':      
                wp_nav_menu($argsTinTucSuKien);  
                $module=getBanner("advertising-article-widget");                        
                if(count($module) > 0){                    
                    $banners=$module["items"];    
                    ?>
                    <div class="margin-top-20">
                        <ul class="advertising">
                            <?php 
                            foreach ($banners as $key => $value) {
                                $alt=$value["alt"];
                                $featuredImg=asset('upload/'.$value["image"]);
                                $permalink='';
                                if(!empty($value['page_url'])){
                                    $permalink=$value['page_url'];                                    
                                }else{
                                    $permalink='javascript:void(0);';
                                }                                
                                ?>
                                <li><center><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" alt="<?php echo $alt; ?>" /></a></center></li>
                                <?php
                            }
                            ?>
                        </ul>                        
                    </div>
                    <?php
                }
                break;
                case 'products':        
                case 'category-product':
                case 'product':
                case 'search-product':    
                case 'register':
                case 'login':                          
                wp_nav_menu($argsDanhMucSanPham);       
                $module=getBanner("advertising-product-widget");                        
                if(count($module) > 0){                    
                    $banners=$module["items"];    
                    ?>
                    <div class="margin-top-20">
                        <ul class="advertising">
                            <?php 
                            foreach ($banners as $key => $value) {
                                $alt=$value["alt"];
                                $featuredImg=asset('upload/'.$value["image"]);
                                $permalink='';
                                if(!empty($value['page_url'])){
                                    $permalink=$value['page_url'];                                    
                                }else{
                                    $permalink='javascript:void(0);';
                                }                                
                                ?>
                                <li><center><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" alt="<?php echo $alt; ?>" /></a></center></li>
                                <?php
                            }
                            ?>
                        </ul>                        
                    </div>
                    <?php
                }                                                         
                break;          
                case 'account':      
                case 'security':                
                case "list-product":
                case "list-media":
                case "list-invoice":
                case "form-product":                
                case "form-media":
                case "form-invoice":
                $arrUser =array();   
                $user = Sentinel::forceCheck(); 
                if(!empty($user)){                
                    $arrUser = $user->toArray();    
                } 
                $newData=array();
                if(count($arrUser) > 0){
                    $dataGroupMember=DB::table('group_member')
                    ->join('user_group_member','group_member.id','=','user_group_member.group_member_id')
                    ->where('user_group_member.user_id',(int)@$arrUser['id'])
                    ->select('group_member.alias')
                    ->groupBy('group_member.alias')
                    ->get()
                    ->toArray();
                    $dataGroupMember=convertToArray($dataGroupMember);  
                    $newData= get_field_data_array($dataGroupMember,'alias');       
                }                
                ?>
                <div class="box-category margin-top-15">
                    <h2 class="menu-right-title">Tác vụ</h2>
                    <div class="category-product-wrapper">
                        <ul class="categoryproduct">
                            <?php 
                            if(array_key_exists('thanh-vien-vip', $newData)){                                   
                                    ?>
                                    <li><a href="<?php echo route('frontend.product.getList'); ?>">Sản phẩm</a></li>                                    
                                    <li><a href="<?php echo route('frontend.media.getList'); ?>">Media</a></li>                                    
                                    <?php 
                                }
                            ?>                            
                            <li><a href="<?php echo route("frontend.index.viewAccount"); ?>">Thông tin tài khoản</a></li>
                            <li><a href="<?php echo route("frontend.index.viewSecurity"); ?>">Đổi mật khẩu</a></li>
                            <li><a href="<?php echo route('frontend.invoice.getList'); ?>">Hóa đơn</a></li>
                            <li><a href="<?php echo route("frontend.index.getLgout"); ?>">Thoát</a></li>
                        </ul>
                    </div>
                </div>
                <?php
                break;                            
            }                                       
            ?>                            
        </div>
        <div class="<?php echo $col_right; ?>">
            <?php
            switch ($component) {                                                                      
                case "category-article":    
                case "articles":                                                                          
                ?>@include("frontend.category-article")<?php
                break;                                         
                case "article":                                                            
                ?>@include("frontend.article")<?php
                break;                
                case "page":                                                            
                ?>@include("frontend.page")<?php
                break;            
                case "search-product":             
                case "category-product":
                case "products":                                                
                ?>@include("frontend.category-product")<?php
                break; 
                case "product":                                                
                ?>@include("frontend.product")<?php
                break;
                case "project-article":                                                
                ?>@include("frontend.project-article")<?php
                break;
                case "projects":                                                
                ?>@include("frontend.projects")<?php
                break;
                case "project":                                                
                ?>@include("frontend.project")<?php
                break;
                case "gio-hang":                                                
                ?>@include("frontend.cart")<?php
                break; 
                case "register":                                                
                ?>@include("frontend.register")<?php
                break;
                case "account":                                                
                ?>@include("frontend.account")<?php
                break;
                case "login":                                                
                ?>@include("frontend.login")<?php
                break;
                case "login-join-project":                                                
                ?>@include("frontend.login-join-project")<?php
                break;
                case "security":                                                
                ?>@include("frontend.security")<?php
                break;
                case "xac-nhan-thanh-toan":                                                
                ?>@include("frontend.confirm-checkout")<?php
                break;
                case "dang-nhap-thanh-toan":                                                
                ?>@include("frontend.login-checkout")<?php
                break;
                case "hoan-tat-thanh-toan":                                                
                ?>@include("frontend.finished-checkout")<?php
                break;
                case "hoa-don":                                                
                ?>@include("frontend.invoice")<?php
                break;     
                case "list-product":
                ?>@include("frontend.list-product")<?php   
                break;    
                case "form-product":
                ?>@include("frontend.form-product")<?php   
                break; 
                case "list-media":
                ?>@include("frontend.list-media")<?php   
                break;    
                case "form-media":
                ?>@include("frontend.form-media")<?php   
                break;  
                case "list-invoice":
                ?>@include("frontend.list-invoice")<?php   
                break;    
                case "form-invoice":
                ?>@include("frontend.form-invoice")<?php   
                break;                                                                    
            }
            ?>
        </div>
        <div class="clr"></div>
        <?php          
        break;
        case 'full-width':        
        ?>
        <div class="col-lg-12">
            <?php
            switch ($component) {                          
                case "contact": 
                ?>@include("frontend.contact")<?php   
                break;      
                case "categories-album": 
                ?>@include("frontend.categories-album")<?php   
                break;   
                case "album": 
                ?>@include("frontend.album")<?php   
                break; 
                case "category-video": 
                ?>@include("frontend.category-video")<?php   
                break;                                                                                             
                case "category-product":                  
                ?>@include("frontend.category-product")<?php
                break; 
                case "product":                  
                ?>@include("frontend.product")<?php
                break; 
                case "cart":                  
                ?>@include("frontend.cart")<?php
                break; 
                case "xac-nhan-thanh-toan":                                                
                ?>@include("frontend.confirm-checkout")<?php
                break;
                case "dang-nhap-thanh-toan":                                                
                ?>@include("frontend.login-checkout")<?php
                break;
                case "hoan-tat-thanh-toan":                                                
                ?>@include("frontend.finished-checkout")<?php
                break;
                case "hoa-don":                                                
                ?>@include("frontend.invoice")<?php
                break; 
                case "cancel-invoice":                                                
                ?>@include("frontend.cancel-invoice")<?php
                break; 
            }  
            ?>            
        </div> 
        <div class="clr"></div>           
        <?php
        break;
    }
    ?>    
</div>
@endsection()               