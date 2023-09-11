<?php

function get_data() {

    require ('database.php');

    return mysqli_query($connection, "SELECT * FROM genre_subgenre_books where parent_id = 0");
}