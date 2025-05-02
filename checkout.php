
<?php
// Connection to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mayart";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// If form submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get form values
  $nom = $_POST['nom'] ;
  $prenom = $_POST['prenom'] ;
  $email = $_POST['email'] ;
  $telephone = $_POST['telephone'] ;
  $adresse = $_POST['adresse'] ;
  $region = $_POST['region'] ;
  $ville = $_POST['ville'] ;
  $code_postal = $_POST['code_postal'] ;
  $info_plus = $_POST['info_plus'] ;

  // Insert into your table (example: 'users')
  $sql = "INSERT INTO clients (nom, prenom,email,telephone,adresse,region,ville,code_postal,info_plus) VALUES ('$nom', '$email','$prenom','$telephone','$adresse','$region','$ville','$code_postal','$info_plus')";
  if ($conn->query($sql) === TRUE) {
    header("Location: paiement.php");
    exit();
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
}


// Close connection
$conn->close();
?>



















<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Détails de Facturation</title>
    <link rel="stylesheet" href="checkout.css">
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
        <p id="comparaison-produit"> Checkout </p>
        <div class="photo">
        <p id="home">Home > </p>
        <p id="comparaison"> Checkout</p>
      </div>
    </div>
    <!-- /////////////////////main///////////////////////////// -->
    <main>
        <div class="partie1">
            <h3>Détails de facturation</h3>
        </div>
        <div class="partie2">
            <div class="formulaire">
                <form action="" method="POST">
                    <label for="nom" id="label2">Nom</label>
                    <input type="text" placeholder="tapez votre nom" id="nom" name="nom">
                    <label for="prenom" id="label1" name ="prenom">Prénom</label>
                    <input type="text" placeholder="tapez votre prenom" id="prenom" name="prenom">
                    <label for="admail" id="label8">Adresse e-mail</label>
                    <input type="text" id="admail" placeholder="Tapez votre adresse email" name="email">

                    <label for="tel" id="label7">Téléphone</label>
                    <input type="text" id="tel" placeholder="+216 00000000" name="telephone">

                    <label for="adresse" id="label4">Adresse</label>
                    <input type="text" id="adresse" placeholder="tapez votre adresse" name="adresse">

                   
                    <label for="region" id="label3">Région</label>
                    <select name="region" id="region">
                        <option name="region" value="Ariana" >Ariana</option>
                        <option name="region" value="Beja">Beja</option>
                        <option name="region" value="Ben Arous">Ben Arous</option>
                        <option name="region" value="Bizerte">Bizerte</option>
                        <option name="region" value="Gabes">Gabes</option>
                        <option name="region" value="Gafsa">Gafsa</option>
                        <option name="region" value="Jendouba">Jendouba</option>
                        <option name="region" value="Kairouan">Kairouan</option>
                        <option name="region" value="Kasserine">Kasserine</option>
                        <option name="region"  value="region">Kébili</option>
                        <option name="region" value="region">Kef</option>
                        <option  name="region" value="region">Mahdia</option>
                        <option name="region" value="region">Manouba</option>
                        <option name="region"  value="region">Mednine</option>
                        <option name="region" value="region">Monastir</option>
                        <option name="region" value="region">Nabeul</option>
                        <option name="region" value="region">Sfax</option>
                        <option name="region" value="region">Sidi Bou Zid</option>
                        <option name="region" value="region">Seliana</option>
                        <option name="region" value="region">Sousse</option>
                        <option name="region" value="region">Tataouine</option>
                        <option name="region" value="region">Tozeur</option>
                        <option name="region" value="region">Tunis</option>
                        <option name="region" value="region">Zaghouan</option>
                    </select>
    
                  
    
    
                    <label for="ville" id="label5">Ville</label>
                    <input type="text" id="ville" name="ville">
    
    
    
                    <label for="codep" id="label6">Code Postal</label>
                    <input type="text" id="codep" name="code_postal">
    
    
                   
    
    
                   
    
    
                    <label for="further" id="label9">Info en plus</label>
                    <textarea  id="further" placeholder="infos suppémentaires" name="info_plus"></textarea>
                    
    
                    <input type="submit" value="Valider mes infos"   id="valider" name="valider">
                    
           
    
                </form>
    
            </div>
            <div class="produit">
                
                <p>Vos données personnelles seront utilisées pour traiter votre commande , améliorer votre éxperience sur ce site , gérer l'accés à votre compte , et à d'autres fins décrites dans notre <a href="./pagepolitique.html" target="_blank">Politique de confidentialité</a></p>

                    

            </div>
        </div>
    
    </main>
    <!-- //////////////////main//////////////////// -->

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
    <script src="./Contact.js"></script>
</body>
</html>