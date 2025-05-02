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

$id_produit1 = isset($_GET['id_produit']) ? intval($_GET['id_produit']) : 0;
$id_produit2 = isset($_GET['id_produit2']) ? intval($_GET['id_produit2']) : 0;

if ($id_produit1 > 0 && $id_produit2 > 0) {
    // Préparer la requête
    $query = $conn->prepare("SELECT * FROM produits WHERE id_produit IN (?, ?)");
    if (!$query) {
        die("Prepare failed: " . $conn->error);
    }

    $query->bind_param("ii", $id_produit1, $id_produit2);
    $query->execute();

    $result = $query->get_result();
    if ($result === false) {
        die("Get result failed: " . $conn->error);
    }

    if ($result->num_rows == 2) {
        $products = $result->fetch_all(MYSQLI_ASSOC);
    } else {
        echo "Not enough products to compare.";
        exit;
    }
} else {
    echo "Invalid product IDs.";
    exit;
}


?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comparaison Des Produits</title>
    <link rel="stylesheet" href="compa produit.css">
    <link rel="shortcut icon" href="../docs/img/logo.png">
</head>

      
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


    <div class="photohead">
     
      <p id="comparaison-produit"> Comparaison Des Produits </p>
      <div class="photo">
      <p id="home">Home > </p>
      <p id="comparaison"> Comparaison</p>
    </div>
    </div>
   
  <div class="main">
  <?php foreach ($products as $product): ?>
    <div class="cart">
      <div class="image">
        <a href="single_product.php?id_produit=<?=$product['id_produit']?>">
          <img src="<?php echo htmlspecialchars($product['image_url']); ?>" alt="<?php echo htmlspecialchars($product['nom_produit']); ?>">
        </a>
      </div>
      <h3 id="nom-produit"><?=$product['nom_produit']?></h3>
      <div class="inline-review">
        <p id="rating"><?=$product['rating']?></p>
        <img src="../docs/img/etoiles.png" alt="stars" id="stars">
        
      </div>
    </div>
  <?php endforeach; ?>
</div>

<h3 id="ajouter">Ajouter un Produit</h3>

<div class="dropdown">
  <form method="get" action="compa_produit.php">
    <select name="id_produit2" class="dropdown-btn" size="1" onchange="this.form.submit()" href="compa_produit.php">
      <option value="">Choisir un Produit</option>

      <?php

      


      // Préparer la requête pour récupérer les autres produits
      if ($id_produit1 > 0 && $id_produit2 > 0) {
          $query2 = $conn->prepare("SELECT * FROM produits WHERE id_produit NOT IN (?, ?)");
          $query2->bind_param("ii", $id_produit1, $id_produit2);
      } elseif ($id_produit2 > 0) {
          $query2 = $conn->prepare("SELECT * FROM produits WHERE id_produit != ?");
          $query2->bind_param("i", $id_produit1);
      }  elseif ($id_produit1 > 0) {
      $query2 = $conn->prepare("SELECT * FROM produits WHERE id_produit != ?");
      $query2->bind_param("i", $id_produit1);
      } else {
          $query2= $conn->prepare("SELECT * FROM produits");
      }

      $query2->execute();
      $result = $query2->get_result();

      while ($produit = $result->fetch_assoc()) {
          echo '<option value="'.$produit['id_produit'].'">'.$produit['nom_produit'].'</option>';
      }
      ?>
    </select>

    <!-- Si besoin de conserver id_produit1 dans le formulaire -->
    <input type="hidden" name="id_produit" value="<?=$id_produit1?>">

  </form>
</div>


<div class="proprieties">
  <table border="1" class="table">
    <thead>
      <tr>
        <th>Général</th>
        <th><?=$products[0]['nom_produit']?></th>
        <th><?=$products[1]['nom_produit']?></th>
      </tr>
    </thead>
    <tbody>
      <?php
      // Décoder les options JSON des deux produits
      $options1 = json_decode($products[0]['options'], true);
      $options2 = json_decode($products[1]['options'], true);

      // Fusionner toutes les clés uniques des deux options
      $all_keys = array_unique(array_merge(array_keys($options1), array_keys($options2)));

      // Parcourir chaque clé pour l'affichage du tableau
      foreach ($all_keys as $key) {
          echo "<tr>";
          echo "<td>".ucfirst($key)."</td>";

          // Produit 1 : tester si c'est un tableau ou une valeur simple
          if (isset($options1[$key])) {
              if (is_array($options1[$key])) {
                  echo "<td><ul>";
                  foreach ($options1[$key] as $item) {
                      echo "<li>$item</li>";
                  }
                  echo "</ul></td>";
              } else {
                  echo "<td>".$options1[$key]."</td>";
              }
          } else {
              echo "<td>Non spécifié</td>";
          }

          // Produit 2 : pareil
          if (isset($options2[$key])) {
              if (is_array($options2[$key])) {
                  echo "<td><ul>";
                  foreach ($options2[$key] as $item) {
                      echo "<li>$item</li>";
                  }
                  echo "</ul></td>";
              } else {
                  echo "<td>".$options2[$key]."</td>";
              }
          } else {
              echo "<td>Non spécifié</td>";
          }

          echo "</tr>";
      }
      ?>
    </tbody>
  </table>
</div>




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
    