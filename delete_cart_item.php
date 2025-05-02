<?php
// Disable error display
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
error_reporting(E_ALL); // Still log errors to the error log

header('Content-Type: application/json');

// Database connection
$db_server = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "mayart";

try {
    $conn = new mysqli($db_server, $db_user, $db_password, $db_name);
    if ($conn->connect_error) {
        throw new Exception("Database connection failed: " . $conn->connect_error);
    }

    // Get the item ID from the POST request
    $data = json_decode(file_get_contents('php://input'), true);
    $itemId = isset($data['id_item']) ? $data['id_item'] : null;

    if (!$itemId) {
        throw new Exception("Item ID is missing");
    }

    // Prepare and execute the delete query
    $query = $conn->prepare("DELETE FROM panier_items WHERE id_item = ?");
    if ($query === false) {
        throw new Exception("Failed to prepare statement: " . $conn->error);
    }

    $query->bind_param("i", $itemId);
    $query->execute();

    if ($query->affected_rows > 0) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Item not found or already deleted']);
    }

    $query->close();
    $conn->close();
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>