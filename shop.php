<?php require_once 'includes/header.php';
require_once 'includes/navbar.php';
?>



<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
				    <li class="breadcrumb-item" aria-current="page">Shop</li>
				  </ol>
				</nav>
			</div>

			<div class="col-md-3">
				<?php require_once 'includes/sidebar.php';?>
			</div>

			<div class="col-md-9">
				<?php require_once 'includes/show_all_products.php';?>
				<?php //require_once 'includes/show_all_products_by_p_cat_id.php'; ?>
				<?php //require_once 'includes/show_all_products_by_cat_id.php'; ?>

			</div>

			<div id="wait" style="position: absolute;top: 40%; left: 45%; padding-top: 200px"></div>

		</div>
	</div>
</div>

<?php require_once 'includes/footer.php';?>


