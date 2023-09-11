<?php
require('database.php');

if (isset($_POST["elemId"])){
    $result = mysqli_query($connection, "SELECT * FROM genre_subgenre_books where parent_id = " . $_POST["elemId"]);

    while ($value = mysqli_fetch_assoc($result)){
        $name = $value["name"];
        $parent = $value["parent_id"];
        $id = $value["id"];

        echo "<div data-parent='$parent' data-id='$id'><a href='#' > $name </a></div>";
    }
}
