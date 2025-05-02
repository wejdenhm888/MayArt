<?php
header('Content-Type: application/json');

// Connexion à la base de données
$db_server = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "mayart";

try {
    $conn = new mysqli($db_server, $db_user, $db_password, $db_name);
    if ($conn->connect_error) {
        throw new Exception("Échec de la connexion à la base de données : " . $conn->connect_error);
    }

    // Récupérer les données envoyées par JavaScript
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);

    // Vérifier que les données nécessaires sont présentes
    if (!isset($data['id_produit']) || !isset($data['size']) || !isset($data['quantity'])) {
        echo json_encode(['success' => false, 'message' => 'Données manquantes']);
        exit;
    }

    // Préparer les données pour l'insertion
    $id_produit = intval($data['id_produit']);
    $taille = $conn->real_escape_string($data['size']);
    $quantite = intval($data['quantity']);

    // Insérer dans la table `cart`
    $query = $conn->prepare("INSERT INTO panier_items (id_produit, taille, quantite) VALUES (?, ?, ?)");
    $query->bind_param("isi", $id_produit, $taille, $quantite);

    if ($query->execute()) {
        echo json_encode(['success' => true, 'message' => 'Produit ajouté au panier avec succès']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Erreur lors de l\'insertion dans la base de données : ' . $conn->error]);
    }

    $query->close();
    $conn->close();
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>