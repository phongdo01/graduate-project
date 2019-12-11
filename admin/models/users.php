<?php
function user_login($email, $password) {
    $sql = "SELECT * FROM user WHERE email='$email' AND password='$password' LIMIT 0,1";
    $query = mysql_query($sql) or die(mysql_error());
    
    if (mysql_num_rows($query)>0) {
        $info_login = mysql_fetch_assoc($query);
        // neu nguoi dang nhap la nhan vien(role = 2)
        // thi chi 1 nguoi dc dang nhap tai 1 thoi diem
        if($info_login['RoleId']==2) {
            $checkIslogin = 'select * from user where RoleId = 2 and isLogin = 1';
            $count = mysql_query($checkIslogin) or die(mysql_error());
            if (mysql_num_rows($count)!=0) {
                return false;
            } else {
                $updateLogin = "update user set isLogin = 1 where email = '$email'";
                // print("<pre>".print_r($updateLogin,true)."</pre>");die();
                mysql_query($updateLogin) or die(mysql_error());
            }
        }
        $_SESSION['user'] = $info_login;
        return true;
    }
    return false;
}
function user_delete($id) {
    $id = intval($id);
    $sql = "DELETE FROM user WHERE id=$id";
    mysql_query($sql) or die(mysql_error());
}
