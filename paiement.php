<?php
// connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mayart";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Vérifier la connexion
if (!$conn) {
    die("Échec de la connexion: " . mysqli_connect_error());
}

// Traiter le formulaire seulement s'il est soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Récupérer les données du formulaire en vérifiant qu'elles existent
    
    $id_client =  $_POST['id_client'] ;
    $id_panier =  $_POST['id_panier'] ;
    $nom_carte = $_POST['nom_carte'] ;
    $num_carte =  $_POST['num_carte'] ;
    $cvv =  $_POST['cvv'] ;
    $code_securite = $_POST['code_securite'] ;
    $date_exp = $_POST['date_exp'] ;
    $mode_paiement =  $_POST['mode_paiement'] ;

    // Valeurs fixes pour l'exemple
    $id_client = 1;
    $id_panier = 1;

    // Préparer et exécuter la requête
    $sql = "INSERT INTO paiement (id_client,id_panier,nom_carte, num_carte, cvv, code_securite, date_exp, mode_paiement)
            VALUES ('$id_client','$id_panier','$nom_carte', '$num_carte', '$cvv', '$code_securite', '$date_exp', '$mode_paiement')";

    if (mysqli_query($conn, $sql)) {
        echo "Paiement effectué avec succès !";
    } else {
        echo "Erreur: " . $sql . "<br>" . mysqli_error($conn);
    }
}

// Fermer la connexion
mysqli_close($conn);
?>













<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paiement</title>
    <link rel="stylesheet" href="Paiement.css">
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
    <!-- ////////////////////////HEADER////////////////////::: -->
    <div class="photohead">
        <p id="comparaison-produit"> Paiement</p>
        <div class="photo">
        <p id="home">Home > </p>
        <p id="comparaison"> Paiement</p>
      </div>
    </div>

    <!-- /////////////////////main///////////////////////////// -->

    <main>
        <div class="cadre">
            <form action="" method="POST">
                <label for="nom">Nom Sur La Carte</label>
                <input type="text" id="nom" placeholder="NOM COMPLET" name="nom_carte">
                <br />
                <label for="numero">Numéro De La Carte</label>
                <input type="text" id="numero" placeholder="XXXX XXXX XXXX XXXX" name="num_carte">
                <br />
                <label for="date">Date D'Expiration</label>
                <input type="date" id="date" name="date_exp" placeholder="MM/AA">
                <br />
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" placeholder="CVV" name="cvv">
                <br />
                <label for="code">Code de Sécurité</label>
                <input type="text" id="code" placeholder="XXXX" name="code_securite">
                <br />

                <div class="option">
                   
                    <input type="radio" name="mode_paiement" id="bancaire" value="virement">
                    <label for="bancaire" id="label11">Virement bancaire direct</label>
                   </div>
                   <div class="option">
                     <input type="radio" name="mode_paiement" id="livraison" value="livraison">
                     <label for="livraison" id="label12">Paiement à la livraison</label>
                   </div>
                <input type="submit" class="sub" value="Payer">
  
            </form>
            
        </div>
    </main>
    <!-- ///////////MAIN//////////// -->

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
    
    
    <!-- ////////////////footer///////////////: -->
    <footer class="mayart-footer">
        <div class="footer-content">
            <!-- Colonne Logo & Adresse -->
            <div class="footer-column logo-column">
                <div class="logo-container">
                    <img src="../docs/img/logo.png" alt="May Art Logo" class="footer-logo">
                    <h1 class="brand-name">MayArt</h1>
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
                    <li><a href="#">Returns</a></li>
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
    <script src="Paiement.js"></script>








