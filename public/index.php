<?php
require '../Modules/categories.php';
require '../Modules/product.php';
require '../Modules/login.php';
require '../Modules/logout.php';
require '../Modules/database.php';
require '../Modules/common.php';
require '../Modules/register.php';
require '../Modules/changeprofile.php';
require '../Modules/adminproduct.php';

session_start();
var_dump($_SESSION);
//var_dump($_POST);
$message="";


$request = $_SERVER['REQUEST_URI'];

$params = explode("/", $request);
print_r($request);
$title = "MuziekOne";
$titleSuffix = "";


//$params[1] is de action
//$params[2] is een extra getal die de action nodig heeft om zijn taak uit te voeren
switch ($params[1]) {

    case 'categories':
        $titleSuffix = ' | Categories';
        $categories = getCategories();
        include_once "../Templates/categories.php";
        break;


    case 'category':
        include_once "../Templates/home.php";
        break;

    case 'product':
        $id = $params[2];
        $products = getProducts($id);
        include_once "../Templates/product.php";
        break;
        
    case 'logout':
        session_destroy();
        $_SESSION=[];
        break;


    case 'productdetail':
        $titleSuffix = ' | Productdetail';
        $id = $params[2];
        $product = getProduct($id);
        include_once "../Templates/productdetail.php";
        break;

    case 'review':
        $titleSuffix = ' | Review';
        $id = $params[2];
        $review = getAllReviews();
        include_once "../Templates/productdetail.php";
        break;
        
    case 'profile':
        include_once "../Templates/memberprofile.php";
        break;
        
    case 'editprofile':
        include_once "../Templates/editprofile.php";
        break;

case 'login':

        $titleSuffix = 'l';
        if (isset($_POST['submit'])) {
            $result = checkLogin();
            var_dump($result);

            switch ($result) {

                case 'ADMIN':
                    header("Location: /admin/home");
                    //include_once "../Templates/admin/home.php";
                    break;
                case 'MEMBER':
                    header("Location: member/home");
                    //include_once "../Templates/admin/member.php";
                    break;
                case 'FAILURE':
                    $message = "Email of password niet correct ingevuld!";
                    include_once "../Templates/login.php";
                    break;
                case 'INCOMPLETE':
                    $message = "Formulier is niet volledig ingevuld!";
                    include_once "../Templates/login.php";
                    break;
            }
        }
        else {
            include_once "../Templates/login.php";
        }

        $titleSuffix = ' | Home';
        include_once "../Templates/login.php";

        break;

    case 'logout':
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;

    case 'register':
        $titleSuffix = ' | Home';
        if (isset($_POST['register'])) {
            $result = makeRegistration();

            switch ($result) {
                case 'SUCCES';
                header("location: /home");
                    break;
                case 'INCOMPLETE';
                 $message = "niet alle velden zijn correct ingevuld";
                 include_once "../Templates/register.php";
                 break;
               case 'EXIST';
                 $message = 'gerbuiker bestaat al';
               include_once "../Templates/register.php";

            }
        }
        else {
            include_once "../Templates/register.php";
        }
        break;

    case 'contact':
        $titleSuffix = ' | Contact';
        include_once "../Templates/contact.php";
        break;

    case 'admin':
        include_once ('admin.php');
        break;

    case 'member':
        include_once ('member.php');
        break;

    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;






}








