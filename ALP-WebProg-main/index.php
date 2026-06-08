<?php require 'db.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Epic Game - Admin</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="header">
        <h1>Epic Game Encyclopedia</h1>
        <a href="add.php" class="btn">+ Tambah Game Baru</a>
    </div>

    <div class="grid">
        <?php
        $stmt = $pdo->query("SELECT * FROM game ORDER BY id DESC");
        while ($game = $stmt->fetch(PDO::FETCH_ASSOC)) {
            ?>
            <div class="card">
                <a href="detail.php?id=<?= $game['id'] ?>" style="text-decoration: none; color: white;">
                    <img src="<?= htmlspecialchars($game['logo']) ?>" alt="Cover">
                    <h3><?= htmlspecialchars($game['title']) ?></h3>
                </a>
                <p style="color: orange; font-size: 14px;"><?= htmlspecialchars($game['genre']) ?></p>

                <div style="margin-top: 15px; display: flex; justify-content: center; gap: 10px;">
                    <a href="edit.php?id=<?= $game['id'] ?>" class="btn btn-edit">Edit</a>
                    <a href="delete.php?id=<?= $game['id'] ?>" onclick="return confirm('Hapus game ini?');"
                        class="btn btn-hapus">Hapus</a>
                </div>
            </div>
        <?php } ?>
    </div>
</body>

</html>