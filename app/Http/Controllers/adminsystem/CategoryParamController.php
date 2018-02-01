<?php namespace App\Http\Controllers\adminsystem;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CategoryArticleModel;
use App\CategoryProductModel;
use App\CategoryParamModel;
use App\ArticleModel;
use App\ProductModel;
use App\PageModel;
use App\ProjectModel;
use App\ProjectArticleModel;
use App\MenuModel;
use App\ArticleCategoryModel;
use App\PaginationModel;
use DB;
class CategoryParamController extends Controller {
	var $_controller="category-param";	
	var $_title="Tham số";
	var $_icon="icon-settings font-dark";
	var $_totalItemsPerPage=9999;    
	var $_pageRange=10;
	public function getList(Request $request){		
		$controller=$this->_controller;	
		$task="list";
		$title=$this->_title;
		$icon=$this->_icon;	
		$currentPage=1; 	              
		$query=DB::table('category_param');        
		if(!empty(@$request->filter_search)){
			$query->where('category_param.fullname','like','%'.trim(@$request->filter_search).'%');
		}
		$data=$query->select('category_param.id')                                
		->groupBy('category_param.id')                
		->get()
		->toArray();
		$totalItems=count($data);
		$totalItemsPerPage=$this->_totalItemsPerPage;       
		$pageRange=$this->_pageRange;
		if(!empty(@$request->filter_page)){
			$currentPage=(int)@$request->filter_page;    
		}            
		$arrPagination=array(
			"totalItems"=>$totalItems,
			"totalItemsPerPage"=>$totalItemsPerPage,
			"pageRange"=>$pageRange,
			"currentPage"=>$currentPage 
		);
		$pagination=new PaginationModel($arrPagination);
		$position = (@$arrPagination['currentPage']-1)*$totalItemsPerPage;
		$data=array();
		$query=DB::table('category_param as n')
		->leftJoin('category_param as a','n.parent_id','=','a.id');        
		if(!empty(@$request->filter_search)){
			$query->where('n.fullname','like','%'.trim(@$request->filter_search).'%');
		}
		$data=$query->select('n.id','n.fullname','n.alias','n.parent_id','a.fullname as parent_fullname','n.sort_order','n.status','n.created_at','n.updated_at')                           
		->groupBy('n.id','n.fullname','n.alias','n.parent_id','a.fullname','n.sort_order','n.status','n.created_at','n.updated_at')
		->orderBy('n.sort_order', 'asc')
		->skip($position)
		->take($totalItemsPerPage)
		->get()
		->toArray();        
		$data=convertToArray($data);
		$data=categoryParamConverter($data,$this->_controller);   
		$data_recursive=array();
		categoryParamRecursive($data,0,null,$data_recursive);          
		$data=$data_recursive;     		
		$arrPrivilege=getArrPrivilege();
		$requestControllerAction=$this->_controller."-list";         
		if(in_array($requestControllerAction,$arrPrivilege)){
			return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon",'data','pagination','filter_search'));
		}
		else{
			return view("adminsystem.no-access");
		}
	}	    	
      public function getForm($task,$id=""){		 
      	$controller=$this->_controller;			
      	$title="";
      	$icon=$this->_icon; 
      	$arrRowData=array();   
      	$arrPrivilege=getArrPrivilege();
      	$requestControllerAction=$this->_controller."-form";    
      	if(in_array($requestControllerAction, $arrPrivilege)){
      		switch ($task) {
      			case 'edit':
      			$title=$this->_title . " : Update";
      			$arrRowData=CategoryParamModel::find((int)@$id)->toArray();      
      			break;
      			case 'add':
      			$title=$this->_title . " : Add new";
      			break;      
      		}             
      		$arrCategory=CategoryParamModel::whereRaw("id != ?",[(int)@$id])->select("id","fullname","parent_id")->orderBy("sort_order","asc")->get()->toArray();
      		$arrCategoryRecursive=array();      
      		categoryRecursiveForm($arrCategory ,0,"",$arrCategoryRecursive)  ;      
      		return view("adminsystem.".$this->_controller.".form",compact("arrCategoryRecursive","arrRowData","controller","task","title","icon")); 
      	} else{
      		return view("adminsystem.no-access");
      	}                           
      }
    public function save(Request $request){
        $id 					           =	trim($request->id)	;        
        $fullname 				       =	trim($request->fullname)	;
        $alias 					         = 	trim($request->alias);   
        $meta_keyword            =  trim($request->meta_keyword);
        $meta_description        =  trim($request->meta_description);
        $category_id	           =	trim($request->category_id);  
        $param_value             =  trim($request->param_value);        
        $sort_order 			       =	trim($request->sort_order);
        $status 				         =  trim($request->status);
        $data 		               =  array();
        $info 		               =  array();
        $error 		               =  array();
        $item		                 =  null;
        $checked 	= 1;              
        if(empty($fullname)){
           $checked = 0;
           $error["fullname"]["type_msg"] = "has-error";
           $error["fullname"]["msg"] = "Thiếu tên";
        }else{
            $data=array();
             if (empty($id)) {
                $data=CategoryParamModel::whereRaw("trim(lower(fullname)) = ?",[trim(mb_strtolower($fullname,'UTF-8'))])->get()->toArray();	        	
            }else{
              $data=CategoryParamModel::whereRaw("trim(lower(fullname)) = ? and id != ?",[trim(mb_strtolower($fullname,'UTF-8')),(int)@$id])->get()->toArray();		
            }  
            if (count($data) > 0) {
              $checked = 0;
              $error["fullname"]["type_msg"] = "has-error";
              $error["fullname"]["msg"] = "Chủ đề bài viết đã tồn tại";
            }      	
        }        
        if(empty($sort_order)){
             $checked = 0;
             $error["sort_order"]["type_msg"] 	= "has-error";
             $error["sort_order"]["msg"] 		= "Thiếu sắp xếp";
        }
        if((int)$status==-1){
             $checked = 0;
             $error["status"]["type_msg"] 		= "has-error";
             $error["status"]["msg"] 			= "Thiếu trạng thái";
        }
        if ($checked == 1) {    
             if(empty($id)){
              $item 				= 	new CategoryParamModel;       
              $item->created_at 	=	date("Y-m-d H:i:s",time());                      		
        } else{
            $item				=	CategoryParamModel::find((int)@$id);   
                       
        }  
        $item->fullname 		=	$fullname;
        $item->alias 			  =	$alias;
        
        $item->meta_keyword     = $meta_keyword;
        $item->meta_description = $meta_description;           
        $item->parent_id 		=	(int)$category_id;      
        $item->param_value  = @$param_value;      
        $item->sort_order 	=	(int)$sort_order;
        $item->status 			=	(int)$status;    
        $item->updated_at 	=	date("Y-m-d H:i:s",time());    	        	
        $item->save();  	        
        $info = array(
          'type_msg' 			=> "has-success",
          'msg' 				=> 'Lưu dữ liệu thành công',
          "checked" 			=> 1,
          "error" 			=> $error,
          "id"    			=> $id
        );
      } else {
            $info = array(
              'type_msg' 			=> "has-error",
              'msg' 				=> 'Nhập dữ liệu có sự cố',
              "checked" 			=> 0,
              "error" 			=> $error,
              "id"				=> ""
            );
      }        		 			       
      return $info;       
    }
      public function changeStatus(Request $request){
            $id             =       (int)$request->id;  
            $status         =       (int)$request->status;
            
            $item=CategoryParamModel::find($id);
            $trangThai=0;
            if($status==0){
              $trangThai=1;
            }
            else{
              $trangThai=0;
            }
            $item->status=$status;
            $item->save();
            $result = array(
                        'id'      => $id, 
                        'status'  => $status, 
                        'link'    => 'javascript:changeStatus('.$id.','.$trangThai.');'
                    );
            return $result;   
      }      
      public function deleteItem($id){                 
        $checked                =   1;
        $type_msg               =   "alert-success";
        $msg                    =   "Xóa thành công";    
        $arrPrivilege=getArrPrivilege();
        $requestControllerAction=$this->_controller."-delete";      
        if(in_array($requestControllerAction,$arrPrivilege)){
          $data                   =   CategoryParamModel::whereRaw("parent_id = ?",[(int)@$id])->get()->toArray();  
          if(count($data) > 0){
            $checked     =   0;
            $type_msg           =   "alert-warning";            
            $msg                    =   "Phần tử này có dữ liệu con. Vui lòng không xoá";
          }          
          if($checked == 1){
            $item               =   CategoryParamModel::find((int)@$id);
            $item->delete();            
          }        
          return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>array("type_msg"=>$type_msg,"msg"=>$msg)]); 
        }else{
          return view("adminsystem.no-access");
        }                               
      }
      public function updateStatus(Request $request,$status){        
        $arrID=$request->cid;
        $type_msg               =   "alert-success";
        $msg                    =   "Cập nhật thành công";    
        $checked                =   1; 
        $arrPrivilege=getArrPrivilege();
        $requestControllerAction=$this->_controller."-status";  
        if(in_array($requestControllerAction,$arrPrivilege)){
          if(count($arrID)==0){
            $checked                =   0;
            $type_msg               =   "alert-warning";            
            $msg                    =   "Vui lòng chọn ít nhất một phần tử";
          }
          if($checked==1){
            foreach ($arrID as $key => $value) {
              $item=CategoryParamModel::find($value);
              $item->status=$status;
              $item->save();    
            }
          }        
          return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>array("type_msg"=>$type_msg,"msg"=>$msg)]); 
        }else{
          return view("adminsystem.no-access");
        }        
      }
      public function trash(Request $request){            
        $arrID                 =   $request->cid;             
        $checked                =   1;
        $type_msg               =   "alert-success";
        $msg                    =   "Xóa thành công";      
        $arrID                 =   $request->cid;   
        $arrPrivilege=getArrPrivilege();
        $requestControllerAction=$this->_controller."-trash";   
        if(in_array($requestControllerAction,$arrPrivilege)){
          if(count($arrID)==0){
            $checked     =   0;
            $type_msg           =   "alert-warning";            
            $msg                =   "Vui lòng chọn ít nhất một phần tử";
          }else{
            foreach ($arrID as $key => $value) {
              if(!empty($value)){
                $data                   =   CategoryParamModel::whereRaw("parent_id = ?",[(int)@$value])->get()->toArray();                    
                if(count($data) > 0){
                  $checked     =   0;
                  $type_msg           =   "alert-warning";            
                  $msg                    =   "Phần tử này có dữ liệu con. Vui lòng không xoá";
                }                
              }                
            }
          }
          if($checked == 1){                
            $strID = implode(',',$arrID);                     
            $sql = "DELETE FROM `category_param` WHERE `id` IN (".$strID.")";                 
            DB::statement($sql);    
          }
          return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>array("type_msg"=>$type_msg,"msg"=>$msg)]); 
        }else{
          return view("adminsystem.no-access");
        }        
      }
      public function sortOrder(Request $request){
        $checked                =   1;
        $type_msg               =   "alert-success";
        $msg                    =   "Lưu dữ liệu thành công"; 
        $arrOrder=array();
        $arrOrder=$request->sort_order;  
        $arrPrivilege=getArrPrivilege();
        $requestControllerAction=$this->_controller."-ordering";    
        if(in_array($requestControllerAction,$arrPrivilege)){
          if(count($arrOrder) == 0){
            $checked     =   0;
            $type_msg           =   "alert-warning";            
            $msg                =   "Vui lòng chọn ít nhất một phần tử";
          }
          if($checked==1){        
            foreach($arrOrder as $id => $value){                    
              $item=CategoryParamModel::find($id);
              $item->sort_order=(int)$value;            
              $item->save();            
            }     
          }    
          return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>array("type_msg"=>$type_msg,"msg"=>$msg)]); 
        }else{
          return view("adminsystem.no-access");
        }        
      }
      
      public function createAlias(Request $request){
        $id                =  trim($request->id)  ; 
        $fullname                =  trim($request->fullname)  ;        
        $data                    =  array();
        $info                    =  array();
        $error                   =  array();
        $item                    =  null;
        $checked  = 1;   
        $alias='';                     
        if(empty($fullname)){
         $checked = 0;
         $error["fullname"]["type_msg"] = "has-error";
         $error["fullname"]["msg"] = "Thiếu tên bài viết";
       }else{
        $alias=str_slug($fullname,'-');
        $dataCategoryParam=array();
        $dataCategoryProduct=array();
        $dataArticle=array();
        $dataProduct=array();
        $dataPage=array();
        $dataProject=array();
          $dataProjectArticle=array();
        $checked_trung_alias=0;
        if (empty($id)) {
          $dataCategoryParam=CategoryParamModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
        }else{
          $dataCategoryParam=CategoryParamModel::whereRaw("trim(lower(alias)) = ? and id != ?",[trim(mb_strtolower($alias,'UTF-8')),(int)@$id])->get()->toArray();    
        }  
        $dataCategoryProduct=CategoryProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        $dataArticle=ArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        $dataProduct=ProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        $dataPage=PageModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        $dataProject=ProjectModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        $dataProjectArticle=ProjectArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
        if (count($dataCategoryParam) > 0) {
          $checked_trung_alias=1;
        }
        if (count($dataCategoryProduct) > 0) {
          $checked_trung_alias=1;
        }
        if (count($dataArticle) > 0) {
          $checked_trung_alias=1;
        }
        if (count($dataProduct) > 0) {
          $checked_trung_alias=1;
        }      
        if (count($dataPage) > 0) {
            $checked_trung_alias=1;
          }  
          if (count($dataProject) > 0) {
            $checked_trung_alias=1;
          }  
          if (count($dataProjectArticle) > 0) {
            $checked_trung_alias=1;
          }   
        if((int)$checked_trung_alias == 1){
          $code_alias=rand(1,999);
          $alias=$alias.'-'.$code_alias;
        }
      }
      if ($checked == 1){
        $info = array(
          'type_msg'      => "has-success",
          'msg'         => 'Lưu dữ liệu thành công',
          "checked"       => 1,
          "error"       => $error,

          "alias"       =>$alias
        );
      }else {
        $info = array(
          'type_msg'      => "has-error",
          'msg'         => 'Nhập dữ liệu có sự cố',
          "checked"       => 0,
          "error"       => $error,
          "alias"        => $alias
        );
      }    
      return $info;
    }
}
?>