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


 // Inclure le fichier de connexion à la base de données
$id_produit = isset($_GET['id_produit']) ? intval($_GET['id_produit']) : 0;
//var_dump($_GET['id_produit']); // Debug

if ($id_produit > 0) {
    $query = $conn->prepare("SELECT produits.*, categories.nom_categorie FROM produits 
                             INNER JOIN categories ON produits.id_categorie = categories.id_categorie 
                             WHERE produits.id_produit = ?");
                             
    $query->bind_param("i", $id_produit);
    $query->execute();
    $result = $query->get_result();

    if ($result->num_rows > 0) {
        $produit = $result->fetch_assoc();
        
        $id_categorie = $produit['id_categorie']; // Récupérer l'ID de la catégorie
        $nom_categorie = $produit['nom_categorie']; // Récupérer le nom de la catégorie
        // Récupérer le nom de la catégorie
        // Traitement des données du produit
    } else {
        echo "Produit introuvable.";
    }

    $query->close();
} else {
    echo "ID de produit invalide.";
}
if (isset($produit['options'])) {
    $optionsJson = $produit['options'];
    $options = json_decode($optionsJson, true);
    
    if (json_last_error() !== JSON_ERROR_NONE) {
        echo "Erreur JSON.";
    }
}

// Step 2: Query for products from the same category
$queryRelatedProducts = $conn->prepare(
    "SELECT * FROM produits 
     WHERE id_categorie = ? AND id_produit != ? 
     ORDER BY RAND() LIMIT 4"  // Fetch 4 random products from the same category
);

if ($queryRelatedProducts === false) {
    die('Query preparation failed: ' . $conn->error);  // Debug the query preparation error
}

$queryRelatedProducts->bind_param("ii", $id_categorie, $id_produit);  // Bind category_id and exclude the current product by id

$queryRelatedProducts->execute();
$resultRelated = $queryRelatedProducts->get_result();

if ($resultRelated === false) {
    die('Failed to get result set: ' . $conn->error);  // If get_result() fails
}

if ($resultRelated->num_rows == 0) {
    echo "No related products found.";
    exit;
}



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="single product.css">
    <link rel="shortcut icon" href="../docs/img/logo.png">

    <title><?php echo $produit['nom_produit']; ?></title>
    <script src="single_product.js">

    </script>
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
    

    <section>
        <div class="second-head">
            <a id="home" href="../docs/home.php">Home > </a>
            <a id="home" href="../docs/home2.php">Shop ></a>
            <h6 > | <?php echo $produit['nom_produit']; ?></h6>
        </div>
    </section>
    <section class="loula">
        <div class="loula">
            <section class="section-img">
                <div class="product-image">
                    <img src ="<?php echo $produit ['image_url'];?>" id="product-image"  >
        
                </div>
            </section>
            <section class="produit-details">
                
                <h2 id="product-name" > <?php echo $produit['nom_produit']; ?></h2>
                
                
                <h3 id="price"> <?php echo $produit['prix']; ?>dt</h3>

                <div class="inline-review">
                    <?php echo $produit['rating']; ?>
                    <img src="../docs/img/etoiles.png" alt="stars" id="stars">
                    <p id="avis-client"> | Client Review</p>

                </div>
                <p id="description">
                <?php echo $produit['description_produit']; ?>

                </p>
                
                </div>
            </section>

        </div>
        
    </section>

 
    <div class="option-items">
    <p id="option-text">Size</p>
    <div class="option-inline-options">
        <?php
        if (isset($options['taille'])) {
            if (is_array($options['taille'])) {
                // Loop through each size in the array and display the full name
                foreach ($options['taille'] as $taille) {
                    echo '<div class="option-button" onclick="choisirOption(this)" 
                          data-size="'.strtolower($taille).'" 
                          data-original="'.htmlspecialchars($taille).'">'
                         .htmlspecialchars($taille).  // Display the full size name
                         '</div>';
                }
            } else {
                // If taille is a single value (not an array), display it directly
                echo '<div class="option-button" onclick="choisirOption(this)" 
                      data-size="'.strtolower($options['taille']).'" 
                      data-original="'.htmlspecialchars($options['taille']).'">'
                     .htmlspecialchars($options['taille']). '</div>';
            }
        }
        ?>
    </div>
</div>



    <div class="quantity">
        <div class="ajouter-item">
            <div style="margin-top: 10px;">
                <button class="quantity-btn" onclick="handleClick(event)" id="quantity-button">
                  <span style="float: left; width: 50%;">-</span>
                  <span style="float: right; width: 50%;">+</span>
                </button>
              
                <div style="margin-top: 10px; font-weight: bold;">
                  Quantité : <span id="quantity-display">1</span>
                </div>
              </div>

            <button class="ajouter-button" onclick="addToCart()" data-id-produit="<?php echo htmlspecialchars($id_produit); ?>">Ajouter au panier</button>
        </div>
    </div>
  </div>
</section>


<div class="prod-ref">
    <h6 id="ref"> | SKU  : SS00<?php echo $produit['id_produit']; ?> </h6>
    <h6 id="ref"> |  Category :<?php echo $produit['nom_categorie'];?></h6>
    <h6 id="ref"> |  Tags : <?php echo $produit['nom_categorie'];?>, <?php echo $produit['nom_produit'];?>,Shop,Home</h6>
    <h6 id="ref"> |  Availability : IN STOCK</h6>
    <h6 id="ref"> |  Brand : May Art</h6>
    <h6 id="ref"> |  Share : </h6>
    <div class="inline-icons">
       <a  href="https://www.facebook.com/share/1BXmqU5G9Z/" ><img src="../docs/img/facebook.png"alt="facebook" id="social-icon"></a>

    </div>
</div>
    
<div class="comparer-button"  >
<a name="comparer" class="comparer" href="compa_produit.php?id_produit=<?php echo $produit['id_produit']; ?>&id_produit2=10">Comparer avec ce produit</a>

</div>



<h2 id="related-products" > Related Products</h2>





<div class="main">


    <?php
    // Step 3: Display the related products
    while ($relatedProduct = $resultRelated->fetch_assoc()) {
        $image_url = $relatedProduct['image_url'] ;// Assuming the image URL is stored in the database
        echo '<div class="autre-produit">
                <div class="imageproduit">
                    <a href="single_product.php?id_produit=' . $relatedProduct['id_produit'] . '">
                        <img src="' . htmlspecialchars($image_url) . '" alt="' . htmlspecialchars($relatedProduct['nom_produit']) . '" id="elt-img">
                    </a>
                </div>
                <div class="textproduit">
                    <h2>' . htmlspecialchars($relatedProduct['nom_produit']) . '</h2>
                    <h5 id="catg">' . htmlspecialchars($nom_categorie) . '</h5>
                    <h4>' . htmlspecialchars($relatedProduct['prix']) . ' dt</h4>
                </div>
            </div>';
    }
    ?>

</div>
<a href="../docs/home2.php" class="button" id="voir-boutton" onclick="activerBouton()">Voir Plus</a>

<div class="images-supp">
    <img src="../docs/img/summer holiday.png" alt="summer holiday" id="summer holiday">
    <img src="../docs/img/grey little cand.png" alt="grey-litle" id="summer holiday">
</div>


  
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
    
    <script>
    window.idProduit = <?php echo json_encode($id_produit); ?>; // Set the ID for JavaScript

    function addToCart() {
        if (!productSelection.size) {
            alert('Veuillez choisir une taille avant d\'ajouter au panier.');
            return;
        }

        const idProduit = window.idProduit;
        if (!idProduit || idProduit <= 0) {
            alert('Erreur : ID du produit invalide.');
            return;
        }

        const data = {
            id_produit: idProduit,
            size: productSelection.size,
            quantity: productSelection.quantity
        };

        console.log("Data being sent:", data); // Debug

        fetch('cart-items.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data)
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                alert(`Produit ajouté au panier ! Taille: ${productSelection.size}, Quantité: ${productSelection.quantity}`);
                resetSelection();
            } else {
                alert('Erreur lors de l\'ajout au panier : ' + result.message);
            }
        })
        .catch(error => {
            console.error('Erreur:', error);
            alert('Une erreur est survenue lors de l\'ajout au panier.');
        });
    }
</script>