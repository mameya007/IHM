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
				    <li class="breadcrumb-item" aria-current="page">Services</li>
				  </ol>
				</nav>
			</div>

			<div class="col-md-12 mb-4">
				<div class="card-deck">
					<?php
$get_services = $getFromU->viewAllFromTable('services');
foreach ($get_services as $get_service) {
    $service_id = $get_service->service_id;
    $service_title = $get_service->service_title;
    $service_image = $get_service->service_image;
    $service_desc = $get_service->service_desc;
    $service_button = $get_service->service_button;
    $service_url = $get_service->service_url;
    ?>


				  <div class="card text-justify">
				    <img class="card-img-top" height="200px" src="admin_area/services_images/<?php echo $service_image; ?>" alt="<?php echo $service_title; ?>">
				    <div class="card-body">
				      <h4 class="card-title"><?php echo $service_title; ?></h4>
				      <p class="card-text"><?php echo $service_desc; ?></p>
				    </div>
				    <div class="card-footer">
				      <center class="text-muted"><a href="<?php echo $service_url; ?>" class="btn btn-sm btn-info text-center"><?php echo $service_button; ?></a></center>
				    </div>
				  </div>
					<?php }?>

				</div>



			</div> <!-- col-md-9 End -->


		</div> <!-- Row End -->





	  </div> <!-- SINGLE PRODUCT ROW END -->

	</div>
</div>




<?php require_once 'includes/footer.php';?>