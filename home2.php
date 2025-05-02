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
?>






<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nos Catégories</title>
    <link rel="shortcut icon" href="../docs/img/logo.png">
    <link href="home2.css" rel="stylesheet" >
    <script src ="home2.js" ></script>

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
    
    
<section class="categories-section">
    <h2 class="section-title">Nos Catégories</h2>
    <div class="categories-container">
        <?php
        $sql = "SELECT id_categorie, nom_categorie, image_url FROM categories";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($categorie = $result->fetch_assoc()) {
                echo '<a href="categorie.php?id_categorie=' . $categorie['id_categorie'] . '" target="_blank" class="category-item">';
                echo '    <img src="' . $categorie['image_url'] . '" alt="' . htmlspecialchars($categorie['nom_categorie']) . '" class="category-icon">';
                echo '    <div class="category-name">' . htmlspecialchars($categorie['nom_categorie']) . '</div>';
                echo '</a>';
            }
        } else {
            echo '<p>Aucune catégorie trouvée.</p>';
        }
        ?>
    </div>
</section>





<section class="custom-section">
        <div class="custom-content">
            <h2 class="custom-title">Obtenez votre bougie personnalisée</h2>
            <p class="custom-text">Personnalisez votre bouquet ou votre bougie en un simple clic, pour la première fois</p>
            <a href="#" target="_blank" class="custom-btn">Personnaliser Maintenant</a>
        </div>
    </section>
    <section class="social-section">
        <div class="social-container">
            <div class="social-header">
                <p class="social-text">Share your setup with</p>
                <h2 class="social-hashtag">#MayArt</h2>
            </div>
            




            <div class="gallery-grid">
                <div class="gallery-item">
                    <img  src="../docs/img/bougix15.jpg"  alt="Bougie avec rose">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bougix14.jpg" alt="Bougies avec vase champignon">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bouquet harmonie.jpeg" alt="Bougies avec pierres">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bougix8.jpg" alt="Bougies avec tulipes">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bougix11.jpg" alt="Collection May Art">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bougix3.jpg" alt="Bougie artisanale">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/photo.b.3.jpeg" alt="Ambiance bougie">
                </div>
                <div class="gallery-item">
                    <img src="../docs/img/bougix6.jpg" alt="Décoration bougie">
                </div>
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
                    <button class="subscribe-button" href="../docs/contact.php">SUBSCRIBE</button>
                </div>
            </div>
        </div>
    
        
        <footer class="simple-footer">
            <p class="copyright">2025 may art. All rights reserved</p>
        </footer>
    </footer>
    