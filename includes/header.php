<?php require_once 'core/init.php';?>

<?php
$ip_add = $getFromU->getRealUserIp();
$total = 0;
$records = $getFromU->select_products_by_ip($ip_add);
foreach ($records as $record) {
    $product_id = $record->p_id;
    $product_price = $record->product_price;
    $product_qty = $record->qty;
    $get_prices = $getFromU->viewProductByProductID($product_id);
    foreach ($get_prices as $get_price) {
        $sub_total = $product_price * $product_qty;
        $total += $sub_total;
    }
}
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <!-- <link rel="stylesheet" type="text/css" href="assets/css/normalize.css"> -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- <link rel="stylesheet" type="text/css" href="assets/css/theme.css"> -->

    <script src='https://www.google.com/recaptcha/api.js'></script>
	<script src="assets/css/number.css"></script>
    <title>eCommerce Store</title>
  </head>
  <body>

