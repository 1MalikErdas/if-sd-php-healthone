<?php
global $params;
//$params[2] is de action en $params[3] een getal die de action nodig heeft
//check if user has role admin
if (!isMember()) {
    logout();
    header ("location:/Templates/member/member.php");
} else {

    switch ($params[2]) {

        case 'home':
            include_once('../Templates/memberhome.php');
            break;

        case 'products':
            break;
        case 'profile':
            include_once('../Templates/memberprofile.php');
            break;
        case 'editprofile':
            $titleStuffix = ' | Profile';
            if (isset($_POST['profile'])) {
                $result = changeProfile();
                if ($result===true) {
                    header("location: /member/profile");
                }else {
                    $message ="niet alle velden zijn goed ingevuld";
                    include_once "../Templates/editprofile.php";
                }
                break;

            }
            else {
                include_once "../Templates/editprofile.php";
            }
            break;


        case 'changepassword':
            include_once "../Templates/changepassword.php";
            break;

        case 'categories':
            break;

        case 'category':
            break;

        case 'product':
            break;

        case 'review':
            break;

        default:
            break;
    }
}