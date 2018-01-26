 <?php 
 use App\GroupMemberModel;
 ?>
 <h2 class="tieu-de margin-top-15">
    Đăng ký
</h2>
<form method="post" name="frm" class="box-article">
    {{ csrf_field() }}   
    <?php                           
    if(count($error) > 0 || count($success) > 0){
        ?>
        <div class="alert-system margin-top-15">
            <?php                                           
            if(count($error) > 0){
                ?>
                <ul class="alert-error">
                    <?php 
                    foreach ($error as $key => $value) {
                        ?>
                        <li><?php echo $value; ?></li>
                        <?php
                    }
                    ?>                              
                </ul>
                <?php
            }
            if(count($success) > 0){
                ?>
                <ul class="alert-success">
                    <?php 
                    foreach ($success as $key => $value) {
                        ?>
                        <li><?php echo $value; ?></li>
                        <?php
                    }
                    ?>                              
                </ul>
                <?php
            }
            ?>                                              
        </div>              
        <?php
    }
    ?>
    <table class="com_product30 margin-top-15" border="0" width="90%" cellpadding="0" cellspacing="0">                   
        <tbody>        
            <tr>
                <td align="right">Tài khoản</td>
                <td><input type="text" name="username" value="<?php echo @$data["username"]; ?>" /></td>        
            </tr>       
            <tr>
                <td align="right">Mật khẩu</td>
                <td><input type="password" name="password" value="<?php echo @$data["password"]; ?>" /></td>        
            </tr>
            <tr>
                <td align="right">Xác nhận mật khẩu</td>
                <td><input type="password" name="password_confirm" value="<?php echo @$data["password_confirm"]; ?>" /></td>        
            </tr>               
            <tr>
                <td align="right">Email</td>
                <td><input type="text" name="email" value="<?php echo @$data["email"]; ?>" /></td>                   
            </tr>                     
            <tr>
                <td align="right">Tên</td>
                <td><input type="text" name="fullname" value="<?php echo @$data["fullname"]; ?>" /></td>            
            </tr>
            <tr>
                <td align="right">Địa chỉ</td>
                <td><input type="text" name="address" value="<?php echo @$data["address"]; ?>" /></td>            
            </tr>                
            <tr>
                <td align="right">Phone</td>
                <td><input type="text" name="phone" value="<?php echo @$data["phone"]; ?>" /></td>            
            </tr>            
            <tr>
                <td align="right">Fax</td>
                <td><input type="text" name="fax" value="<?php echo @$data["fax"]; ?>" /></td>            
            </tr>   
            <tr>
                <td align="right">Nhóm thành viên</td>
                <td>
                    <?php 
                    $alias_1='thanh-vien-vip';
                    $alias_2='thanh-vien-thuong';
                    $dataGroupMember=DB::table('group_member')
                                        ->where(function($query) use ($alias_1,$alias_2){
                                                $query->where('group_member.alias',@$alias_1)
                                                ->orWhere('group_member.alias',@$alias_2);
                                        }) 
                                        ->select('group_member.id','group_member.fullname','group_member.alias')
                                        ->groupBy('group_member.id','group_member.fullname','group_member.alias')
                                        ->get()->
                                        toArray();
                    $dataGroupMember=convertToArray($dataGroupMember);
                    $ddlGroupMember=cmsSelectboxCategory('group_member_id','group_member_id', 'form-control', $dataGroupMember,  0,'');
                    echo $ddlGroupMember;
                    ?>
                </td>            
            </tr>
            <tr>           
                <td></td>
                <td class="com_product31">
                    <div class="box-readmore">
                        <a href="javascript:void(0);" onclick="document.forms['frm'].submit();">Gửi</a>       
                    </div>      
                </td>                      
            </tr> 
        </tbody>    
    </table>
</form>
