<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" id="navbar">
	<a class="navbar-brand home" href="index.php">Shoes TN</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto text-uppercase">
			<li >
				<a href="index.php">Home</a>

			</li>

			<li>

<div class="container">

	<div class="row">
	<div class="vl"></div>

        <div class="dropdown">
            <a id="dLabel" role="button"  data-toggle="dropdown" data-hover="dropdown" data-target="#" href="#">
                Men <span class="caret"></span>
			</a>
    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
				<li><a class="customColorNav" tabindex="-1" href="shop.php?cat=1">ALL</a></li>
				<hr>
				<li> <a class="customColorNav" tabindex="0" href="shop.php?p_cat=1">Sneakers</a></li>
				<hr>
				<li><a class="customColorNav" tabindex="1" href="shop.php?p_cat=2">Derbies and Oxfords</a></li>
				<hr>
				<li><a class="customColorNav" tabindex="2" href="shop.php?p_cat=3">Moccasins and boat shoes</a></li>
				<hr>
				<li>	<a class="customColorNav" tabindex="3" href="shop.php?p_cat=4">Sandals</a></li>
            </ul>
		</div>
		<div class="vl"></div>
        <div class="dropdown">
            <a id="dLabel" role="button"  data-toggle="dropdown" data-hover="dropdown" data-target="#" href="#">
                Women <span class="caret"></span>
            </a>
    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
				  <li><a class="customColorNav" href="shop.php?cat=2">ALL</a></li>
				  <hr>
				  <li><a class="customColorNav" href="shop.php?p_cat=5">Heel shoe</a></li>
				  <hr>
				  <li> <a class="customColorNav" href="shop.php?p_cat=6">Boots</a></li>
				  <hr>
				  <li> <a class="customColorNav" href="shop.php?p_cat=7">Derbies</a></li>
				  <hr>
                 <li> <a class="customColorNav" href="shop.php?p_cat=8">Moccasin</a></li>
            </ul>
		</div>
		<div class="vl"></div>
        <div class="dropdown">
            <a id="dLabel" role="button"  data-toggle="dropdown" data-hover="dropdown" data-target="#" href="#">
                KIDS <span class="caret"></span>
            </a>
    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
				<li><a class="customColorNav" href="shop.php?cat=3">ALL</a></li>
				<hr>
				<li> <a class="customColorNav" href="shop.php?p_cat=9">City shoes</a></li>
				<hr>
				<li><a class="customColorNav" href="shop.php?p_cat=10">Baby shoes</a></li>
				<hr>
				<li><a class="customColorNav" href="shop.php?p_cat=11">Sport shoes</a></li>
				<hr>
				  <li><a class="customColorNav" href="shop.php?p_cat=12">Snow shoes</a></li>
            </ul>
        </div>
	</div>
</div>
				<!-- <a href="shop.php">SHOP</a> -->
			</li>

			<?php if (!isset($_SESSION['customer_email'])): ?>
				<li><a href="checkout.php">My Account</a></li>
			<?php else: ?>
				<li><a href="customer/my_account.php?my_orders">My Account</a></li>
			<?php endif?>
			<div class="vl"></div>
			<li>
				<a href="contact.php">Contact Us</a>
			</li>
			<div class="vl"></div>
			<li>
        <a href="about.php">About Us</a>
	  </li>

		</ul>

			<a href="cart.php" class="btn btn-success mr-2"><i class="fas fa-shopping-cart"></i><span> <?php echo $getFromU->count_product_by_ip($ip_add); ?> items in Cart</span></a>

		<form method="GET" action="shop.php" class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="user_query" required="1">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search">Search</button>
		</form>
	</div>
</nav>