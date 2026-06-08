<?php
require 'db.php';
$id = $_GET['id'];
$stmt = $pdo->prepare("SELECT * FROM game WHERE id = ?");
$stmt->execute([$id]);
$game = $stmt->fetch(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html>
<head>
    <title><?= $game['title'] ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header"><h1><?= htmlspecialchars($game['title']) ?></h1></div>
    <div style="max-width: 600px; margin: 0 auto; background: #1e1e1e; padding: 20px; border-radius: 10px;">
        <img src="<?= htmlspecialchars($game['logo']) ?>" style="width: 100%; height: 300px; object-fit: contain;">
        <h2>Genre: <?= htmlspecialchars($game['genre']) ?></h2>
        <p><strong>Publisher:</strong> <?= htmlspecialchars($game['publisher']) ?></p>
        <p><strong>Developer:</strong> <?= htmlspecialchars($game['developer']) ?></p>
        <hr>
        <p><?= nl2br(htmlspecialchars($game['description'])) ?></p>
        <br>
        <a href="index.php" class="btn">Kembali ke Home</a>
    </div>
</body>
</html>