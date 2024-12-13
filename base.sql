CREATE DATABASE UniversalPaperclips;

USE UniversalPaperclips;

CREATE TABLE GameState (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paperclips INT NOT NULL DEFAULT 0,
    wire INT NOT NULL DEFAULT 100,
    money INT NOT NULL DEFAULT 50,
    autoMachineCount INT NOT NULL DEFAULT 0,
    marketingActive BOOLEAN NOT NULL DEFAULT FALSE
);

-- Insérer l'état initial (optionnel)
INSERT INTO GameState (paperclips, wire, money, autoMachineCount, marketingActive)
VALUES (0, 100, 50, 0, FALSE);
