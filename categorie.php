


<?php

$db_server="localhost"; // default for XAMPP

$db_user = "root";  // default for XAMPP
$db_password = "";      // default for XAMPP
$db_name = "mayart";
$conn="";
// Create connection
try {
  $conn = new mysqli($db_server, $db_user, $db_password, $db_name);
} catch (Exception $e) {
  echo "Could not connect to the database" ;
}

// récupère l'id_categories depuis l'URL
$id_categorie = isset($_GET['id_categorie']) ? intval($_GET['id_categorie']) : 0;

// requête pour récupérer les produits de cette catégorie
$sql = "SELECT * FROM produits WHERE id_categorie = $id_categorie";
$result = mysqli_query($conn, $sql);
$sql_1="SELECT nom_categorie FROM categories WHERE id_categorie = $id_categorie";
$result_1=mysqli_query($conn,$sql_1);
?>


<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catégorie </title>
    <link rel="stylesheet" href="air frais.css">
    <link rel="shortcut icon" href="../docs/img/logo.png">
    <script src="air-frais.js"></script>

</head>
<body>
<header>
        <div class="logo">
        <a href="../docs/home.php" ><img  id="logo1" src ="../docs/img/logo.png"></a>
        <div class="logo" >MayArt</div>
        </div>
        <div class="inline_container">
            <a href="../docs/home.php" class="nav">Home</a>
            <a href="../docs/home2.php" class="nav">Shop</a>
            <a href="../docs/home.php"  class="nav">About</a>
            <a href="../docs/Contact.php" class="nav">Contact</a>    
        </div>
        <div class="inline_container">
            <a href="../docs/home.php" class="nav">
                <img   src="../docs/img/home.png">
            </a>
            <a href="../docs/home2.php" class="nav">
                <img src ="../docs/img/rech.png">
            </a>
            <a href="../docs/contact.php" class="nav">
                <img src ="../docs/img/9alb.png">
            </a>
            <a href="../docs/cart.php" class="nav">
                <img src ="../docs/img/char.png">
            </a>
        </div>
    </header>








    
    <?php if (mysqli_num_rows($result) > 0) {
    while($row_1 = mysqli_fetch_assoc($result_1)){ ?>
    <div class="photohead">
      <p id="bougies"><?php echo htmlspecialchars($row_1['nom_categorie']); ?></p>
      <div class="taswira">
      <p id="home">home > </p>
      <p id="shop"> shop</p>
    </div>
    </div>
    <?php
    }
} else {
    echo "<p>Aucun produit trouvé dans cette catégorie.</p>";
}


?>

    <div class="filter-section">
        <button class="filter-btn">
           
            <img src="../docs/img/filtre.png"  class="icons" alt="Filter Icon"> 
            Filter
        </button>
        
        <div class="view-options">
           
            <img src="../docs/img/grid.png" class="icons" alt="Grid View">
          
            <img src="../docs/img/liste.png" class="icons" alt="List View">
        </div>
        
        <span class="results-text">Showing 1–16 of 32 results</span>
        
        <div class="show-options">
            <label for="show">Show</label>
            <input type="number" id="show" value="16" min="1">
        </div>
        
        <div class="sort-options">
            <label for="sort">Sort by</label>
            <select id="sort">
                <option>Default</option>
            </select>
        </div>
    </div>
    

<?php
    // vérifie s'il y a des produits
if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        ?>
        <div class="cart">
            <div class="image">
            <a href="single_product.php?id_produit=<?php echo $row['id_produit']; ?>">
  <img src="<?php echo $row['image_url']; ?>" alt="">
</a>
            </div>
            <div class="textinderphoto">
                <h2 class="product-name"><?php echo htmlspecialchars($row['nom_produit']); ?></h2>
                <h4 class="product-price"><?php echo htmlspecialchars($row['prix']); ?> dt</h4>
            </div>
        </div>
        <?php
    }
} else {
    echo "<p>Aucun produit trouvé dans cette catégorie.</p>";
}

mysqli_close($conn);
?>


 <!-- ////////////////footer///////////////: -->
 <section class="features">
        <div class="feature">
            <div class="icon">
                <img src="../docs/img/trophy.jpg" alt="High Quality">
            </div>
            <div class="text">
                <h3>High Quality</h3>
                <p>Crafted from top materials</p>
            </div>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="../docs/img/check.png" alt="Warranty Protection">
            </div>
            <div class="text">
                <h3>Warranty Protection</h3>
                <p>Over 1 year</p>
            </div>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="../docs/img/shipping.png" alt="Free Shipping">
            </div>
            <div class="text">
                <h3>Free Shipping</h3>
                <p>Order over 150 dt</p>
            </div>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="../docs/img/support.png" alt="24/7 Support">
            </div>
            <div class="text">
                <h3>24 / 7 Support</h3>
                <p>Dedicated support</p>
            </div>
        </div>
    </section>
    
    
     
    <footer class="mayart-footer">
        <div class="footer-content">
            <!-- Colonne Logo & Adresse -->
            <div class="footer-column logo-column">
                <div class="logo-container">
                    <a href="../docs/home.php"><img src="../docs/img/logo.png"  alt="May Art Logo" class="footer-logo"></a>
                    <h1 class="brand-name" >MayArt</h1>
                </div>
                <div class="address-container">
                    <p>Adresse: </p>
                    <p>2037,12 Rue D'El Bahja</p>
                    <p>Route de Sfax</p>
                </div>
            </div>
    
            <!-- Colonne Home -->
            <div class="footer-column">
                <h2 class="footer-title"><a href="../docs/home.php" class="footer-title-link">Home</a></h2>
                <ul class="footer-links">
                    <li><a href="../docs/home2.php">Shop</a></li>
                    <li><a href="../docs/home2.php">About</a></li>
                    <li><a href="../docs/contact.php">Contact</a></li>
                </ul>
            </div>
    
          
            <div class="footer-column">
                <h2 class="footer-title"><a href="../docs/contact.php" class="footer-title-link">Help</a></h2>
                <ul class="footer-links">
                    <li><a href="../docs/paiement.php">Payment Options</a></li>
                    <li><a href="../docs/contact.php">Returns</a></li>
                    <li><a href="../docs/checkout.php">Privacy Policies</a></li>
                </ul>
            </div>
    
            
            <div class="footer-column">
                <h2 class="footer-title">Newsletter</h2>
                <div class="newsletter-container">
                    <input type="email" placeholder="Enter Your Email Address" class="newsletter-input">
                    <a href="../docs/contact.php"><button class="subscribe-button" >SUBSCRIBE</button></a>
                </div>
            </div>
        </div>
    
        
        <footer class="simple-footer">
            <p class="copyright">2025 may art. All rights reserved</p>
        </footer>
    </footer>
    