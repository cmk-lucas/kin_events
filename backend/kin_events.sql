-- Création de la base de données
CREATE DATABASE IF NOT EXISTS kin_events;
USE kin_events;

-- Table des utilisateurs
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('user', 'admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des événements
CREATE TABLE IF NOT EXISTS events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    event_date DATETIME NOT NULL,
    location VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des commandes de billets
CREATE TABLE IF NOT EXISTS tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    event_id INT,
    quantity INT DEFAULT 1,
    total_price DECIMAL(10, 2),
    status ENUM('paid', 'pending', 'cancelled') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (event_id) REFERENCES events(id)
);

-- Table des entrées sur le site
CREATE TABLE IF NOT EXISTS site_entries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    entry_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),  -- Pour enregistrer l'adresse IP
    user_agent TEXT,  -- Pour enregistrer le navigateur et le système d'exploitation
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insérer des utilisateurs de test (admin et user)
INSERT INTO users (full_name, email, password, role) VALUES
('Admin User', 'admin@kinevents.cd', 'hashed_password_admin', 'admin'),
('Jean Mbala', 'jean.mbala@kinevents.cd', 'hashed_password_user', 'user'),
('Marie Mbuyi', 'marie.mbuyi@kinevents.cd', 'hashed_password_user', 'user');

-- Insérer des événements de test
INSERT INTO events (name, description, event_date, location) VALUES
('Concert de Fally Ipupa', 'Concert exclusif de Fally Ipupa à Kinshasa', '2025-05-15 20:00:00', 'Stade des Martyrs'),
('Festival de Musique Africaine', 'Un festival pour célébrer la musique africaine', '2025-06-01 15:00:00', 'Kinshasa Arena');

-- Insérer des commandes de billets de test
INSERT INTO tickets (user_id, event_id, quantity, total_price, status) VALUES
(2, 1, 2, 50.00, 'paid'),
(3, 2, 1, 30.00, 'pending');

-- Insérer des entrées sur le site de test
INSERT INTO site_entries (user_id, ip_address, user_agent) VALUES
(2, '192.168.1.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(3, '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
