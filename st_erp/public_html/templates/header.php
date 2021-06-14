<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="../index.php">ST Inventory System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      
      
        <?php
          if (isset($_SESSION["userid"])) {

            ?>
            <li class="nav-item active">
              <a class="nav-link" href="dashboard.php"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./new_order.php"><i class="fa fa-first-order">&nbsp;</i>Order <span class="sr-only">(current)</span></a>
            </li>

             <li class="nav-item active">
              <a class="nav-link" href="./customers.php"><i class="fa fa-users">&nbsp;</i>Customers <span class="sr-only">(current)</span></a>
            </li>

           
            <li class="nav-item active">
              <a class="nav-link" href="./manage_categories.php"><i class="fa fa-list-alt">&nbsp;</i>Categorie <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./manage_brand.php"><i class="fa fa-building">&nbsp;</i>Brand <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./manage_product.php"><i class="fa fa-product-hunt">&nbsp;</i>Product <span class="sr-only">(current)</span></a>
            </li>

            <div class="topnav-right">
              <li class="nav-item active">
              <a class="nav-link" href="logout.php"><i class="fa fa-sign-out">&nbsp;</i>Logout</a>
              </li>
            </div>

            <?php
          }
        ?>
        
    </ul>
  </div>
</nav>