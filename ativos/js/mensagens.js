const deleteMessageModal = document.getElementById("deleteMessageModal");

if (deleteMessageModal) {
    deleteMessageModal.addEventListener("show.bs.modal", event => {
        const button = event.relatedTarget,
            recipient = button.getAttribute("data-bs-id"),
            deleteBtn = deleteMessageModal.querySelector(".delete-btn");

        deleteBtn.addEventListener("click", () => {
            alert("Mensagem excluída com sucesso!");
            deleteBtn.href = "mensagens1.php?messageId=" + recipient;
        });
    });
}