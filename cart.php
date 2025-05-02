<?php
// Database connection
$db_server = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "mayart";

try {
    $conn = new mysqli($db_server, $db_user, $db_password, $db_name);
    if ($conn->connect_error) {
        throw new Exception("Échec de la connexion à la base de données : " . $conn->connect_error);
    }

    // Query to fetch cart items with product details
    $query = $conn->prepare("
        SELECT pi.id_item, pi.id_produit, pi.taille, pi.quantite, p.nom_produit, p.prix, p.image_url 
        FROM panier_items pi
        INNER JOIN produits p ON pi.id_produit = p.id_produit
    ");
    
    // Check if prepare failed
    if ($query === false) {
        throw new Exception("Failed to prepare statement: " . $conn->error);
    }

    $query->execute();
    $result = $query->get_result();

    $cart_items = [];
    $subtotal = 0;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $cart_items[] = $row;
            $subtotal += $row['prix'] * $row['quantite'];
        }
    }

    $query->close();
    $conn->close();
} catch (Exception $e) {
    echo "Erreur : " . $e->getMessage();
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="stylesheet" href="Cart.css">
    <link rel="shortcut icon" href="../img/logo.png">
</head>
<body>
    <!-- ////////////////////////header/////////////////: -->
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
        <p id="comparaison-produit">Cart</p>
        <div class="photo">
            <p id="home">Home > </p>
            <p id="comparaison">Cart</p>
        </div>
    </div>
    <!-- /////////////////////main///////////////////////////// -->
    <main>
        <div class="cartnames">
            <div class="cart1">
                <p><strong>Produit</strong></p>
            </div>
            <div class="cart1">
                <p><strong>Prix</strong></p>
            </div>
            <div class="cart1">
                <p><strong>Quantité</strong></p>
            </div>
            <div class="cart1">
                <p><strong>total</strong></p>
            </div>
        </div>
        <div class="maincolumns">
            <div class="cadre">
                <?php if (empty($cart_items)): ?>
                    <p style="text-align: center; padding: 20px;">Votre panier est vide.</p>
                <?php else: ?>
                    <?php foreach ($cart_items as $item): ?>
                        <div class="produit">
                            <img src="<?php echo htmlspecialchars($item['image_url']); ?>" alt="<?php echo htmlspecialchars($item['nom_produit']); ?>">
                            <span class="product-name"><?php echo htmlspecialchars($item['nom_produit']); ?></span>
                        </div>
                        <div class="prixx">
                            <?php echo htmlspecialchars($item['prix']); ?>dt
                        </div>
                        <div class="quantityy">
                            <?php echo htmlspecialchars($item['quantite']); ?>
                        </div>
                        <div class="subtotal">
                            <?php echo htmlspecialchars($item['prix'] * $item['quantite']); ?>dt
                        </div>
                        <img src="../docs/img/supprimer.png" alt="poubelle" class="supp" data-id="<?php echo htmlspecialchars($item['id_item']); ?>">
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

            <div class="totalpanier">
                <h3>Total du Panier</h3>
                <p id="Soustotal">Sous-total: <strong><?php echo number_format($subtotal,2); ?>dt</strong></p>
                <p id="total">Total: <strong><?php echo number_format($subtotal, 2); ?>dt</strong></p>
                <button><a href="../docs/checkout.php">Vérifier</a></button>
            </div> 
        </div>
        
        <div class="buttons">
            <button id="butt1" ><a href="../docs/home2.php">Continuer l'Achat</a></button>
            <button id="butt2" ><a href="../docs/home2.php">Montrer plus de Produits</a></button>
        </div> 
    </main>
    <!-- //////////////////main//////////////////// -->

    <!-- ////////////////footer///////////////: -->

  
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
</body>
</html>




<script>
        document.addEventListener('DOMContentLoaded', function() {
            const deleteButtons = document.querySelectorAll('.supp');

            deleteButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const itemId = this.getAttribute('data-id');
                    console.log('Item ID:', itemId);

                    if (!itemId) {
                        alert('Erreur : ID de l\'article manquant.');
                        return;
                    }

                    if (!confirm('Êtes-vous sûr de vouloir supprimer cet article du panier ?')) {
                        return;
                    }

                    fetch('delete_cart_item.php', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({ id_item: itemId })
                    })
                    .then(response => {
                        console.log('Response Status:', response.status);
                        console.log('Response OK:', response.ok);
                        if (!response.ok) {
                            throw new Error('Network response was not ok: ' + response.statusText);
                        }
                        return response.json();
                    })
                    .then(result => {
                        console.log('Result:', result);
                        if (result.success) {
                            this.closest('.produit').nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.remove();
                            this.closest('.produit').nextElementSibling.nextElementSibling.nextElementSibling.remove();
                            this.closest('.produit').nextElementSibling.nextElementSibling.remove();
                            this.closest('.produit').nextElementSibling.remove();
                            this.closest('.produit').remove();
                            location.reload();
                        } else {
                            alert('Erreur lors de la suppression : ' + result.message);
                        }
                    })
                    .catch(error => {
                        console.error('Fetch Error:', error.message);
                        alert('Le Produit est supprimé ');
                    });
                });
            });
        });
    </script>