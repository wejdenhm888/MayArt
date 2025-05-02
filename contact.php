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
    // Get and validate form values with isset()
    $nom = isset($_POST['nom']) ? trim($_POST['nom']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $sujet = isset($_POST['sujet']) ? trim($_POST['sujet']) : '';
    $msg = isset($_POST['msg']) ? trim($_POST['msg']) : '';

    // Validate required fields
    $errors = [];
    if (empty($nom)) {
        $errors[] = "Le nom est requis.";
    }
    if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Une adresse e-mail valide est requise.";
    }
    if (empty($msg)) {
        $errors[] = "Le message est requis.";
    }

    if (empty($errors)) {
        // Use prepared statement to prevent SQL injection
        $sql = "INSERT INTO contact (nom, email, sujet, msg) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $nom, $email, $sujet, $msg);

        if ($stmt->execute()) {
            header("Location: contact.php?success=1");
            exit();
        } else {
            echo "Erreur lors de l'insertion : " . $conn->error;
        }
        $stmt->close();
    } else {
        // Display errors
        echo "<p style='color: red;'>Erreurs :</p><ul style='color: red;'>";
        foreach ($errors as $error) {
            echo "<li>$error</li>";
        }
        echo "</ul>";
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="../docs/Contact.css">
    <link rel="shortcut icon" href="../docs/img/logo.png">
</head>
<body>
    <header>
        <div class="logo">
            <a href="../docs/home.php"><img id="logo1" src="../docs/img/logo.png"></a>
            <div class="logo">MayArt</div>
        </div>
        <div class="inline_container">
            <a href="../docs/home.php" class="nav">Home</a>
            <a href="../docs/home2.php" class="nav">Shop</a>
            <a href="../docs/home.php" class="nav">About</a>
            <a href="../docs/Contact.php" class="nav">Contact</a>    
        </div>
        <div class="inline_container">
            <a href="../docs/home.php" class="nav">
                <img src="../docs/img/home.png">
            </a>
            <a href="../docs/home2.php" class="nav">
                <img src="../docs/img/rech.png">
            </a>
            <a href="../docs/contact.php" class="nav">
                <img src="../docs/img/9alb.png">
            </a>
            <a href="../docs/cart.php" class="nav">
                <img src="../docs/img/char.png">
            </a>
        </div>
    </header>
    
    <div class="photohead">
        <p id="comparaison-produit">Contact</p>
        <div class="photo">
            <p id="home">Home > </p>
            <p id="comparaison">Contact</p>
        </div>
    </div>

    <main>
        <div class="cadre">
            <div class="section1">
                <h3><strong>Contactez-nous</strong></h3>
                <p id="paragraphe1">
                    Pour plus d'informations sur nos produits et services, n'hésitez pas à nous envoyer un e-mail.
                </p>
                <p id="paragraphe1">
                    Notre équipe est toujours là pour vous aider. N'hésitez pas !
                </p>
            </div>
            <div class="section2">
                <div class="section21">
                    <div class="partie">
                        <img src="../docs/img/localisation.png" alt="Local" id="img1">
                        <p id="para1">Adresse: 2037, 12 Rue D'El Bahja Route de Sfax</p>
                    </div>
                    <div class="partie">
                        <img src="../docs/img/telephone.png" alt="tel" id="img2">
                        <p id="para2">Téléphone Mobile : +216 21008294</p>
                    </div>
                    <div class="partie">
                        <img src="../docs/img/horaires.png" alt="horaires">
                        <p id="para3">Horaires : Lundi-Vendredi De 9h00-22h00</p>
                    </div>
                </div>
                <div class="section22">
                    <?php if (isset($_GET['success']) && $_GET['success'] == 1): ?>
                        <p style="color: green;">Message envoyé avec succès !</p>
                    <?php endif; ?>
                    <form action="" method="POST">
                        <label for="nom">Votre nom</label>
                        <input type="text" id="nom" placeholder="Abc" name="nom" required>
                        <br />
                        <label for="mail">Adresse e-mail</label>
                        <input type="email" id="mail" placeholder="Abc@def.com" name="email" required>
                        <br />
                        <label for="sujet">Sujet</label>
                        <input type="text" id="sujet" placeholder="Optionnel" name="sujet">
                        <br />
                        <label for="message">Message</label>
                        <textarea id="message" placeholder="(Example : Bonjour, je voudrais poser une question à propos de..)" name="msg" required></textarea>
                        <br />
                        <div class="section3">
                            <input type="submit" value="Envoyer">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

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
            <div class="footer-column logo-column">
                <div class="logo-container">
                    <img src="../docs/img/logo.png" alt="May Art Logo" class="footer-logo">
                    <h1 class="brand-name">MayArt</h1>
                </div>
                <div class="address-container">
                    <p>Adresse: </p>
                    <p>2037, 12 Rue D'El Bahja</p>
                    <p>Route de Sfax</p>
                </div>
            </div>
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
                    <a href="../docs/contact.php"><button class="subscribe-button">SUBSCRIBE</button></a>
                </div>
            </div>
        </div>
        <footer class="simple-footer">
            <p class="copyright">2025 May Art. All rights reserved</p>
        </footer>
    </footer>
    <script src="./Contact.js"></script>
</body>
</html>