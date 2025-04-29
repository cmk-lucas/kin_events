<?php
$servername = "localhost"; // ou l'adresse de ton serveur de base de données
$username = "root"; // nom d'utilisateur pour la base de données
$password = ""; // mot de passe pour l'utilisateur
$dbname = "kin_events"; // nom de la base de données

// Création de la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
