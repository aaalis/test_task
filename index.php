<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="jquery-3.7.1.min.js"></script>
    <title>Books</title>
</head>
<body>

<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Древовидная структура книг и категорий</h1>
                <div class="list" style="font-size: 30px; ">
                    <?php
                    require ('genres.php');

                    $result = get_data();

                    while ($value = mysqli_fetch_assoc($result))
                    {
                        ?>

                        <div data-parent="<?php echo $value["parent_id"];?>"
                             data-id="<?php echo $value["id"];?>">
                            <a href='#'>
                                <?php echo $value["name"]."↓";?>
                            </a>
                        </div>

                        <?php
                    }
                    ?>

                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready(function () {
        let opened = [];

        $(".list").on("click", "div:has(a)",function (e){
            if (!opened.includes($(this).data("id"))){
                var element = $(this);
                var elemId = element.data("id");

                $.ajax({
                    type: "POST",
                    url: "books.php",
                    dataType: "html",
                    cache: false,
                    data: { elemId: elemId },
                    success: function (response) {
                        element.after("<pre>" + response);
                        opened.push(elemId);
                    },
                    error: function () {
                        alert('get_data call error')
                    }
                })
            }
        });
    });
</script>
</body>
</html>