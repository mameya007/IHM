<?php require_once 'includes/header.php';
require_once 'includes/navbar.php';
?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.php">Home</a></li>
					<li class="breadcrumb-item" aria-current="page">Terms &amp; Conditions | Refund Policy</li>
				</ol>
			</nav>
		</div>
	</div>
</div>


<div class="container my-5">
	<div class="row">
		<div class="col-3">
			<div class="card">
				<div class="card-body">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">

						<?php
$view_term1 = $getFromU->selectTerm1();
$term_id = $view_term1->term_id;
$term_title = $view_term1->term_title;
$term_link = $view_term1->term_link;
$term_desc = $view_term1->term_desc;

?>

						<a class="nav-link active" id="<?php echo $term_link; ?>-tab" data-toggle="pill" href="#<?php echo $term_link; ?>" role="tab" aria-controls="<?php echo $term_link; ?>" aria-selected="true"><?php echo $term_title; ?></a>

						<?php
$get_terms = $getFromU->viewAllFromTable("terms");
$count = count($get_terms);

$view_terms = $getFromU->selectTerms($count);
foreach ($view_terms as $view_term) {
    $term_id = $view_term->term_id;
    $term_title = $view_term->term_title;
    $term_link = $view_term->term_link;

    ?>
						<a class="nav-link" id="<?php echo $term_link; ?>-tab" data-toggle="pill" href="#<?php echo $term_link; ?>" role="tab" aria-controls="<?php echo $term_link; ?>" aria-selected="false"><?php echo $term_title; ?></a>

						<?php }?>


					</div>
				</div>
			</div>
		</div>
		<div class="col-9">
			<div class="card text-justify">
				<div class="card-body">
					<div class="tab-content" id="v-pills-tabContent">
						<?php

$view_term1 = $getFromU->selectTerm1();
$term_id = $view_term1->term_id;
$term_title = $view_term1->term_title;
$term_link = $view_term1->term_link;
$term_desc = $view_term1->term_desc;
?>
						<div class="tab-pane fade show active" id="<?php echo $term_link; ?>" role="tabpanel" aria-labelledby="<?php echo $term_link; ?>-tab">
							<h4 class="mb-4"><?php echo $term_title; ?></h4>
							<p><?php echo $term_desc; ?></p>
						</div>


						<?php
$get_terms = $getFromU->viewAllFromTable("terms");
$count = count($get_terms);

$view_terms = $getFromU->selectTerms($count);
foreach ($view_terms as $view_term) {
    $term_id = $view_term->term_id;
    $term_title = $view_term->term_title;
    $term_link = $view_term->term_link;
    $term_desc = $view_term->term_desc;
    ?>
						<div class="tab-pane fade show" id="<?php echo $term_link; ?>" role="tabpanel" aria-labelledby="<?php echo $term_link; ?>-tab">
							<h4 class="mb-4"><?php echo $term_title; ?></h4>
							<p><?php echo $term_desc; ?></p>
						</div>

						<?php }?>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>










		<?php require_once 'includes/footer.php';?>

