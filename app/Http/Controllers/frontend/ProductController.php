<?php namespace App\Http\Controllers\frontend;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CategoryModel;
use App\CategoryArticleModel;
use App\CategoryProductModel;
use App\GroupModel;
use App\MenuModel;
use App\ArticleModel;
use App\PageModel;
use App\PaginationModel;
use App\ProductModel;
use App\ModuleMenuModel;
use App\ModuleCustomModel;
use App\ModuleArticleModel;
use App\ModMenuTypeModel;
use App\User;
use App\UserGroupMemberModel;
use App\GroupMemberModel;
use App\CustomerModel;
use App\InvoiceModel;
use App\InvoiceDetailModel;
use App\BannerModel;
use App\ModuleItemModel;
use App\PaymentMethodModel;
use App\ProjectModel;
use App\ProjectArticleModel;
use App\ProjectMemberModel;
use App\OrganizationModel;
use App\AlbumModel;
use App\PhotoModel;
use App\CategoryVideoModel;
use App\VideoModel;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Session;
use DB;
use Hash;
use Sentinel;
class ProductController extends Controller {  
  var $_pageRange=4;
  var $_ssNameUser="vmuser";
  var $_ssNameCart="vmart";      
  public function getListProduct(){
    $component="manage-list-product";
    $layout="two-column";
    $arrUser=array();              
    $user = Sentinel::forceCheck(); 
    if(!empty($user)){                
      $arrUser = $user->toArray();    
    }      
    if(count($arrUser) == 0){
      return redirect()->route("frontend.index.login"); 
    }
    return view("frontend.index",compact("component","layout"));
  }  
  public function getForm($task,$id=""){     
    $component="manage-add-product";
    $layout="two-column";
    $arrUser=array();              
    $user = Sentinel::forceCheck(); 
    if(!empty($user)){                
      $arrUser = $user->toArray();    
    }      
    if(count($arrUser) == 0){
      return redirect()->route("frontend.index.login"); 
    }
    return view("frontend.index",compact("component","layout"));
  }
}







