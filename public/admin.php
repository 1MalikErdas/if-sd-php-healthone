 <?php
global $params;

//check if user has role admin
if (!isAdmin()) {
    logout();
    header ("location:/home");
} else {
/* $params[2] is de action
   $params[3] is een getal die de delete action nodig heeft
*/
    switch ($params[2]) {

        case 'home':
            include_once "../Templates/adminhome.php";
            break;

        case 'products':
            $products= getAllProducts();
            include_once "../Templates/adminproducts.php";
            break;

        case 'edit':

            break;

        case 'delete':
            $delete = deleteProduct();
            include_once "../Templates/adminproducts.php";

            break;

        default:
            break;
    }
}