<?php include_once("validação.php");
include_once("cabeçalhos/head.php");
include_once("cabeçalhos/nav.php");
require_once("../class/Message.php");

$message = new Message();
$stmt = $message->list();
$stmt2 = $message->countMessagesNumber();
?>

<section id="containerColumn" class="container-column container-fluid">

    <div class="column-1 container">

        <?php foreach ($stmt2 as $row) {
            if ($row[0] == 0) {
                echo "<h3>Você não possui nenhuma mensagem!</h3>";
            } else if ($row[0] == 1) {
                echo "<h3>Você possui 1 mensagem!</h3>";
            } else {
                echo "<h3>Você possui $row[0] mensagens!</h3>";
            }
        } ?>

        <div>
            <?php foreach ($stmt as $row) { ?>
                <div class="message-container">
                    <p>De: <?php echo $row[1] ?></p>
                    <p><?php echo $row[2] ?></p>
                    <a type="button" class="btn btn-delete" data-bs-toggle="modal" data-bs-target="#deleteMessageModal" data-bs-id="<?php echo $row[0] ?>">Excluir</a>
                    <div id="deleteMessageModal" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 id="exampleModalLabel" class="modal-title">Excluir mensagem</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Tem certeza de que deseja excluir essa mensagem?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancelar</button>
                                    <a class="btn btn-delete delete-btn" href="">Excluir</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

</section>

</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="../ativos/js/mensagens.js"></script>
</body>

</html>