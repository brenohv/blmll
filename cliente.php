<?php
require_once("class/Service.php");


$service = new Service();
$stmt = $service->list();

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="ativos/css/style.css">
    <link rel="shortcut icon" href="ativos/img/logo.png">
    <title>Pereira Barbershop</title>
</head>

<body class="index-bg">

    <header id="home" class="index-header">
        <section id="contactUs">
            <h2 class="title-section title-form">Deixe Seu Contato!</h2>
            <form id="form" class="form" method="post" action="admins/mensagens1.php">
                <label for="emailInput">Digite seu endereço de e-mail:</label>
                <input type="email" id="emailInput" class="index-text-input select-disable" name="clientEmail" maxlength="60" placeholder="exemplo123@gmail.com">
                <p class="error-text">Endereço de e-mail inválido.</p>
                <label for="messageInput">Digite sua mensagem:</label>
                <textarea type="text" id="messageInput" class="index-text-input select-disable" name="clientMessage" maxlength="250" placeholder="Deixe o seu nome/telefone/horario desejado/ cabelo,barba ou ambos"></textarea>
                <p class="error-text">Digite uma mensagem.</p>
                <div class="btn-container"><input id="submitBtn" class="index-submit-btn" type="button" value="Enviar"></div>
            </form>
            </div>
        </section>
    </main>

    <footer class="footer">
        <h6>© 2024 COPYRIGHT - Pereira Barbershop</h6>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
    <script src="ativos/js/index.js"></script>
</body>

</html>