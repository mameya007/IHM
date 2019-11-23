<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" id="navbar">
	<a class="navbar-brand home" href="#">Chassures TN</a>
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
        <div class="dropdown">
            <a id="dLabel" role="button"  data-toggle="dropdown" data-hover="dropdown" data-target="#" href="#">
                SHOP <span class="caret"></span>
            </a>
    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
				<li><a href="shop.php">ALL</a></li>
			<li class="dropdown-submenu">
				<a tabindex="-1" href="shop.php?cat=1">MEN</a>
                <ul class="dropdown-menu">
                  <li> <a href="shop.php?p_cat=1">Sneakers</a></li>
                  <li><a href="shop.php?p_cat=2">Derbies et Richelieus</a></li>
                  <li><a href="shop.php?p_cat=3">Mocassins et chassueres bateau</a></li>
                  <li><a href="shop.php?p_cat=4">Sandales</a></li>
                </ul>
			  </li>
			  <li class="dropdown-submenu">
                <a tabindex="-1" href="shop.php?cat=2">WOMEN</a>
                <ul class="dropdown-menu">
                  <li> <a href="shop.php?p_cat=5">Chaussure à Talons</a></li>
                  <li><a href="shop.php?p_cat=6">Bottes</a></li>
                  <li><a href="shop.php?p_cat=7">Derbies</a></li>
                  <li><a href="shop.php?p_cat=8">Mocassins</a></li>
                </ul>
              </li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="shop.php?cat=3">KIDS</a>
                <ul class="dropdown-menu">
                  <li> <a href="shop.php?p_cat=9">Chaussures de ville</a></li>
                  <li><a href="shop.php?p_cat=10">Chaussures pour bébé</a></li>
				  <li><a href="shop.php?p_cat=11">Chaussures de sport</a></li>
				  <li><a href="shop.php?p_cat=12">Chaussures de neige</a></li>
                </ul>
              </li>
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

			<li>
				<a href="contact.php">Contact Us</a>
			</li>
			<li>
        <a href="about.php">About Us</a>
      </li>
      <li>
        <a href="services.php">Services</a>
      </li>
		</ul>

			<a href="cart.php" class="btn btn-success mr-2"><i class="fas fa-shopping-cart"></i><span> <?php echo $getFromU->count_product_by_ip($ip_add); ?> items in Cart</span></a>

		<form method="GET" action="shop.php" class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="user_query" required="1">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search">Search</button>
		</form>
	</div>
</nav>