<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Input Data</title>
</head>
<body>
    <form action="index.php" method="post">
        <input type="text" name="nama" placeholder="Nama" required>
        <br>
        <input type="number" name="umur" placeholder="Umur" required>
        <br>
        <input type="text" name="hobi" placeholder="Hobi" required>
        <br>
        <input type="text" name="cita_cita" placeholder="Cita-cita" required>
        <br>
        <textarea name="deskripsi" placeholder="Deskripsi singkat tentang kamu" rows="4" cols="50" required></textarea>
        <br><br>
        <button type="submit" name="submit">Submit</button>
    </form>
</body>
</html>

<?php

include 'config.php';

if (isset($_POST["submit"])) {
    $nama = $_POST["nama"];
    $umur = $_POST["umur"];
    $hobi = $_POST["hobi"];
    $cita_cita = $_POST["cita_cita"];
    $deskripsi = $_POST["deskripsi"];

    $nama = mysqli_real_escape_string($connect, $nama);
    $umur = (int)$umur;
    $hobi = mysqli_real_escape_string($connect, $hobi);
    $cita_cita = mysqli_real_escape_string($connect, $cita_cita);
    $deskripsi = mysqli_real_escape_string($connect, $deskripsi);

    $query = "INSERT INTO hari4 (nama, umur, hobi, cita_cita, deskripsi) VALUES ('$nama', '$umur', '$hobi', '$cita_cita', '$deskripsi')";

    if (mysqli_query($connect, $query)) {
        echo "Data berhasil disimpan.";
    } else {
        echo "Error: " . mysqli_error($connect);
    }
}
?>