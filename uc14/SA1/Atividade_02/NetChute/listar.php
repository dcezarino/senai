<?php
include_once './conexao.php';
$sql = "SELECT * FROM clientes";
$result = $conn->query($sql);
?>


<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="estilo.css">

    <title>::: NetChute - Artigos esportivos. :::</title>
</head>

<body>
    <div class="login-page">

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary rounded">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.php">::: NetChute :::</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listar.php">Listar Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">Cadastrar Clientes</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <br>


        <div class="container">



            <div class="card w-50 p-3 rounded">
                <div class="card-header">
                    <h5 class="card-title">Clientes cadastrados:</h5>
                </div>
                <div class="card-body">
                    <table class="table table-hover table-responsive w-100 table-striped">

                        <thead>
                            <tr>
                                <th scope="col">Código:</th>
                                <th scope="col">Nome:</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <?php

                                if ($result->num_rows > 0) {

                                    while ($row = $result->fetch_assoc()) {
                                        echo '<tr>';
                                        echo '<td>';
                                        echo '<span>' . $row["codigo"] . '</span>';
                                        echo '</td>';

                                        echo '<td>';
                                        echo '<span>' . $row["nome"] . '</span>';
                                        echo '</td>';
                                        echo '</tr>';
                                    }
                                } else {
                                    echo "Não existem dados cadastrados.";
                                }
                                ?>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <div style="height: 100px;"></div>


        <div class="footer-copyright fixed-bottom bg-primary text-center py-3">
            <span class="text-light align-middle">| ::: NetChute - Artigos esportivos. ::: UC 14 | - ©
                2022 Copyright: CTM Supervisão de Educação Online</span>
        </div>

    </div>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>

</html>