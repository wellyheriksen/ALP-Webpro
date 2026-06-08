<?php
require 'db.php';

// 1. Ambil data game berdasarkan ID yang dikirim dari link
$game = null;
if (isset($_GET['id'])) {
    $stmt = $pdo->prepare("SELECT * FROM game WHERE id = ?");
    $stmt->execute([$_GET['id']]);
    $game = $stmt->fetch(PDO::FETCH_ASSOC);
}

// 2. Jika tombol "Update Data" ditekan
if (isset($_POST['update'])) {
    $sql = "UPDATE game SET title=?, genre=?, description=?, publisher=?, developer=?, logo=? WHERE id=?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['title'], 
        $_POST['genre'], 
        $_POST['desc'], 
        $_POST['publisher'], 
        $_POST['dev'], 
        $_POST['logo'], 
        $_GET['id']
    ]);
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Game</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header"><h1>Edit Game</h1></div>
    <form method="POST">
        <label>Judul Game</label>
        <input type="text" name="title" value="<?= htmlspecialchars($game['title']) ?>" required>
        
        <label>Genre</label>
        <select name="genre">
            <option value="Arcade Shooter" <?= $game['genre']=='Arcade Shooter'?'selected':'' ?>>Arcade Shooter</option>
            <option value="Tactical Shooter" <?= $game['genre']=='Tactical Shooter'?'selected':'' ?>>Tactical Shooter</option>
            <option value="Survival" <?= $game['genre']=='Survival'?'selected':'' ?>>Survival</option>
            <option value="Horror" <?= $game['genre']=='Horror'?'selected':'' ?>>Horror</option>
        </select>
        
        <label>Deskripsi</label>
        <textarea name="desc" rows="4"><?= htmlspecialchars($game['description']) ?></textarea>
        
        <label>Publisher</label>
        <input type="text" name="publisher" value="<?= htmlspecialchars($game['publisher']) ?>">
        
        <label>Developer</label>
        <input type="text" name="dev" value="<?= htmlspecialchars($game['developer']) ?>">
        
        <label>URL Gambar</label>
        <input type="text" name="logo" value="<?= htmlspecialchars($game['logo']) ?>">
        
        <button type="submit" name="update" class="btn" style="width: 100%;">Update Data</button>
        <br><br>
        <a href="index.php" style="color: white; text-align: center; display: block;">Batal</a>
    </form>
</body>
</html>