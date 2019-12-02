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


<body>

		<div id="top"> <!-- Top Starts -->
			<div class="container"> <!-- Container Starts -->
				<div class="row"> <!-- row Starts -->
					<div class="col-md-6"> <!-- col-md-6 offer Starts -->
						<a href="customer/my_account.php" class="btn btn-info btn-sm">
							<?php
if (!isset($_SESSION['customer_email'])) {
    echo "Welcome : <strong class='text-uppercase'>Guest</strong>";
} else {
    $customer = $getFromU->view_customer_by_email($_SESSION['customer_email']);
    $customer_name = $customer->customer_name;
    echo "Welcome : <strong class='text-uppercase'>$customer_name</strong>";
}
?>
						</a>

						<a href="#">Shopping Cart: Sub-Total Price $ <?php echo $total; ?>, Total Items : <?php echo $getFromU->count_product_by_ip($ip_add); ?></a>


					</div> <!-- col-md-6 offer Ends -->

					<div class="col-md-6"> <!-- col-md-6 Starts -->
						<ul class="menu"> <!-- menu starts -->
							<?php if (!isset($_SESSION['customer_email'])): ?>
								<li><a href="customer_register.php">Register</a></li>
							<?php endif?>

							<?php if (!isset($_SESSION['customer_email'])): ?>
								<li><a href="checkout.php">My Account</a></li>
							<?php else: ?>
								<li><a href="customer/my_account.php?my_orders">My Account</a></li>
							<?php endif?>

							<li><a href="cart.php">Go To Cart</a></li>
							<li>
								<?php if (!isset($_SESSION['customer_email'])): ?>
									<a href="checkout.php">Login</a>
								<?php else: ?>
									<a href="logout.php">Logout</a>
								<?php endif?>

							</li>
						</ul> <!-- menu ends -->
					</div> <!-- col-md-6 Ends -->
				</div><!-- row ends -->


			</div> <!-- Container Ends -->
		</div> <!-- Top Ends -->



		<?php
require_once 'includes/navbar.php';
?>


<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
				    <li class="breadcrumb-item" aria-current="page">Cart</li>
				  </ol>
				</nav>
			</div>


			<div class="col-md-9">
				<div class="card mb-3">
				  <div class="card-body">
				    <h5 class="card-title">Shopping Cart</h5>
				    <p class="card-text text-muted">You currently have <?php echo $getFromU->count_product_by_ip($ip_add); ?> product(s) in Cart.</p>
				    <form method="post" action="cart.php" enctype="multipart/form-data">
							<div class="table-responsive mb-3">
							  <table class="table table-bordered table-hover text-center">
								  <thead>
								    <tr>
								      <th colspan="2" scope="col">Product</th>
								      <th scope="col" width="20%">Quantity</th>
								      <th scope="col">Unit Price ($)</th>
								      <th scope="col">Size</th>
								      <th scope="col">Delete</th>
								      <th scope="col">Sub Total ($)</th>
								    </tr>
								  </thead>
								  <tbody>

									<?php
$ip_add = $getFromU->getRealUserIp();
$total = 0;
$records = $getFromU->select_products_by_ip($ip_add);
foreach ($records as $record) {
    $product_id = $record->p_id;
    $product_qty = $record->qty;
    $product_price = $record->product_price;
    $product_size = $record->size;
    $get_prices = $getFromU->viewProductByProductID($product_id);
    foreach ($get_prices as $get_price) {
        $product_img1 = $get_price->product_img1;
        $product_title = $get_price->product_title;
        $sub_total = $product_price * $product_qty;
        $total += $sub_total;

        $_SESSION['product_qty'] = $product_qty;
        ?>

								    <tr>
								      <td>
								      	<a href="details.php?product_id=<?php echo $product_id; ?>"><img class="img-fluid cart_image" src="admin_area/product_images/<?php echo $product_img1; ?>"></a>
								      </td>
								      <td>
								      	<a href="details.php?product_id=<?php echo $product_id; ?>"><?php echo $product_title; ?></a>
								      </td>
								      <td>
												<input type="number" name="quentity" value="<?php echo $_SESSION['product_qty']; ?>" data-product-id = "<?php echo $product_id; ?>" class="quentity form-control" >
								      </td>
								      <td>$ <?php echo $product_price; ?></td>
								      <td><?php echo ucwords($product_size); ?></td>
								      <td>
								      	<div class="custom-control custom-checkbox">
									        <input type="checkbox" name="remove[]" value="<?php echo $product_id; ?>" class="custom-control-input" id="checkbox['<?php echo $product_id; ?>']">
									        <label class="custom-control-label" for="checkbox['<?php echo $product_id; ?>']"></label>
									      </div>
								      </td>
								      <td class="text-right">$ <?php echo number_format($sub_total, 2); ?></td>
								    </tr>
									<?php }}?>

								    <tr>
								    	<th class="text-right" colspan="6"> Total </th>
								    	<th class="text-right" colspan="1"> $ <?php echo number_format($total, 2); ?></th>
								    </tr>


								  </tbody>
								</table>
							</div> <!-- Table Responsive End -->


							<div class="card-footer">
								<div class="row">
									<div class="col-lg-3 pr-1 pb-2">
										<a href="index.php" class="btn btn-outline-primary form-control"><i class="fas fa-chevron-left"></i> Continue Shopping</a>
									</div>
									<div class="col-lg-2 pr-1 pb-2">
										<a href="index.php" class="btn btn-outline-danger form-control"><i class="fas fa-shopping-cart"></i> Empty</a>
									</div>
									<div class="col-lg-3 pr-lg-3 pr-1 pb-2">
										<button class="btn btn-outline-info float-sm-right form-control" type="submit" name="update" value="Update Cart">
											<i class="fas fa-sync-alt"></i> Update Cart
										</button>
									</div>
									<div class="col-lg-4  pr-lg-3 pr-1 ">
										<a href="checkout.php" class="btn btn-outline-success form-control">Proceed to Checkout <i class="fas fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
				    </form> <!-- Form End -->

				    <?php
if (isset($_POST['update']) && !empty($_POST['update'])) {
    if (!empty($_POST['remove'])) {
        $product_ids = $_POST['remove'];
        foreach ($product_ids as $product_id) {
            $delete_id = $getFromU->delete_from_cart_by_id($product_id);
        }
        if ($delete_id) {
            header('Location: cart.php');
            echo '<script>alert("Item(s) Deleted Sucessfully")</script>';
            echo '<script>window.open("cart.php", "_self")</script>';
        }
    } else {
        $records = $getFromU->select_products_by_ip($ip_add);
        $quantites = $_POST["quentity"];
        print_r($quantites);
        $i = 0;
        foreach ($records as $record) {
            $product_id = $record->p_id;
            $product_qty = $record->qty;
            $product_price = $record->product_price;
            $product_size = $record->size;
            $product_color = $record->color;
            $qty = $quantites[$i] != null ? $quantites[$i] : $record->qty;
            $getFromU->update_cart($product_id, $ip_add, $qty);
        }
    }
}
?>
				  </div>
				</div>
			</div> <!-- col-md-9 End -->

			<div class="col-md-3">
				<div class="card">
				  <h5 class="card-header text-center">Order Summary</h5>
				  <div class="card-body">
				    <p class="card-text text-muted text-justify">With supporting text below as a natural lead-in to additional content.</p>
				    <table class="table table-hover text-center">
						  <thead>
						    <tr>
						      <th scope="col">Heading</th>
						      <th scope="col">Price</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td>Price</td>
						      <td class="text-right">$ <?php echo number_format($total, 2); ?></td>
						    </tr>
						    <tr>
						      <td>Tax</td>
						      <td class="text-right">$ <?php echo number_format($tax = ($total * 5) / 100, 2); ?></td>
						    </tr>
						    <tr>
						      <td>Shipping</td>
						      <td class="text-right">$ <?php echo number_format($shipping = ($total * 4.5) / 100, 2); ?></td>
						    </tr>
						    <tr>
						      <th>Total</th>
						      <th class="text-right">$ <?php echo number_format($total + $tax + $shipping, 2); ?></th>
						    </tr>
						  </tbody>
						</table>
				  </div>
				</div>
			</div>

		</div> <!-- Row End -->


		<div class="row suggestion_heading">
			<div class="col-md-12 ">
				<div class="text-center">
					<h2 class="">You may also Like this</h2>
				</div>
			</div>
		</div>

	  <div class="row">
	  	<?php
$random_products = $getFromU->select_random_products();
foreach ($random_products as $random_product) {
    $product_title = $random_product->product_title;
    $product_id = $random_product->product_id;
    $product_img1 = $random_product->product_img1;
    $product_price = $random_product->product_price;
    $product_label = $random_product->product_label;
    $manufacturer_id = $random_product->manufacturer_id;
    $product_psp_price = $random_product->product_psp_price;

    $view_manufacturer = $getFromU->selectManufacturerByManufacturerID($manufacturer_id);
    $manufacturer_title = $view_manufacturer->manufacturer_title;

    if ($product_label == "Sale" || $product_label == "Gift") {
        $product_price = "<del>$$product_price</del>";
        $product_psp_price = "<i class='fas fa-long-arrow-alt-right'></i> $$product_psp_price";
    } else {
        $product_price = "$$product_price";
        $product_psp_price = "";
    }
    ?>
	  	<div class="col-sm-6 col-md-3 justify-content-center single">
				<div class="product mb-4">
					<div class="card">
					  <a href="details.php?product_id=<?php echo $product_id; ?>"><img class="card-img-top img-fluid p-3" src="admin_area/product_images/<?php echo $product_img1; ?>" alt="Card image cap"></a>
					  <div class="card-body text-center">
					  	<p class="btn btn-sm btn-info mb-0">Mnf By : <?php echo $manufacturer_title; ?></p><hr>
					    <h6 class="card-title"><a href="details.php?product_id=<?php echo $product_id; ?>"><?php echo $product_title; ?></a></h6>
					    <p class="card-text"><?php echo $product_price; ?> <?php echo $product_psp_price; ?></p>
					    <div class="row">
								<div class="col-md-6  pr-1 pb-2">
									<a href="details.php?product_id=<?php echo $product_id; ?>" class="btn btn-outline-info form-control">Details</a>
								</div>
								<div class="col-md-6  pr-lg-3 pr-1">
									<a href="details.php?product_id=<?php echo $product_id; ?>" class="btn btn-success form-control"><i class="fas fa-shopping-cart"></i> Add</a>
								</div>
							</div>
					  </div>
					</div>
				</div>
				<?php if (!empty($product_label)): ?>
					<a class="label sale" style="color: black">
						<div class="thelabel"><?php echo $product_label; ?></div>
						<div class="label-background"></div>
					</a>
				<?php endif?>
			</div> <!-- SINGLE PRODUCT END -->

		<?php }?>

	  </div> <!-- SINGLE PRODUCT ROW END -->

	</div>
</div>




<script>
	$(document).ready(function(data) {
		$(document).on('keyup', '.quentity', function(){
			var id = $(this).data("product_id");
			var quentity = $(this).val();

			if (quentity != '') {
				$.ajax({
					url : "change.php",
					method : "POST",
					data : {id:id, quentity:quentity},
					success : function (data) {
						$(body).load("cart_body.php");
					}
				});
			}

		});
	});


</script>