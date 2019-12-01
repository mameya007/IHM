<!-- <div class="card mb-3">
  <div class="card-body">
    <h5 class="card-title">Shop</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus neque nisi cupiditate, eligendi molestias corporis nihil ipsa distinctio in repellendus!</!
  </div>
</div> -->


<div class="row" id="Products">

	<?php require_once 'includes/get_all_products.php';?>

</div> <!-- ROW END -->

<div class="row mb-4">
	<ul class="pagination">

		<?php require_once 'includes/get_paginator.php';?>
	</ul>
	<!-- <div class="col-lg-12 offset-lg-3 d-flex"> -->
	</div>
</div> <!-- Pagination ROW END -->
