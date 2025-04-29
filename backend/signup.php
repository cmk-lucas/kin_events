<?php
include('db.php'); // Inclure la connexion à la base de données

// Vérifier si le formulaire est soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Valider les champs
    if (empty($full_name) || empty($email) || empty($password)) {
        echo "Tous les champs sont obligatoires.";
        exit();
    }

    // Vérifier si l'email existe déjà dans la base de données
    $sql = "SELECT * FROM users WHERE email = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "Cet email est déjà utilisé.";
        exit();
    }

    // Hacher le mot de passe avant de l'enregistrer
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insérer les données de l'utilisateur dans la base de données
    $sql = "INSERT INTO users (full_name, email, password, role) 
            VALUES ('$full_name', '$email', '$hashed_password', 'user')";

    if ($conn->query($sql) === TRUE) {
        echo "Inscription réussie !";
        // Rediriger l'utilisateur vers la page de connexion ou d'accueil
        header("Location: login.php"); // Remplacer par l'URL de la page de connexion
        exit();
    } else {
        echo "Erreur : " . $conn->error;
    }
}
?>
