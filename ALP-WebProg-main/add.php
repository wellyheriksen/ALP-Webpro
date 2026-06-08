<?php
require 'db.php';
if (isset($_POST['simpan'])) {
    $title = $_POST['title'];
    $genre = $_POST['genre'];
    $desc = $_POST['description'];
    $publisher = $_POST['publisher'];
    $dev = $_POST['developer'];
    $logo = $_POST['logo'];

    $stmt = $pdo->prepare("INSERT INTO game (title, genre, description, publisher, developer, logo) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->execute([$title, $genre, $desc, $publisher, $dev, $logo]);
    
    header("Location: index.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tambah Game</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header"><h1>Tambah Game</h1></div>
    <form method="POST">
        <label>Judul Game</label>
        <input type="text" name="title" required>
        
        <label>Genre</label>
        <select name="genre" required>
            <option value="Arcade Shooter">Arcade Shooter</option>
            <option value="Tactical Shooter">Tactical Shooter</option>
            <option value="Survival">Survival</option>
            <option value="Horror">Horror</option>
        </select>
        
        <label>Deskripsi</label>
        <textarea name="description" rows="4" required></textarea>
        
        <label>Publisher</label>
        <input type="text" name="publisher" required>
        
        <label>Developer</label>
        <input type="text" name="developer" required>
        
        <label>URL Gambar (misal: img/cover.png)</label>
        <input type="text" name="logo" required>
        
        <button type="submit" name="simpan" class="btn" style="width: 100%;">Simpan Game</button>
        <br><br>
        <a href="index.php" style="color: white; text-align: center; display: block;">Batal & Kembali</a>
    </form>
</body>
</html>