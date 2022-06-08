function confirmar(){
    var id = sessionStorage.ID_USUARIO;
    var PersonagemVar = TodosFilmes.value;
    
    fetch("/usuarios/confirmar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            // crie um atributo que recebe o valor recuperado aqui
            // Agora vá para o arquivo routes/usuario.js
            IdServer: id,
            filmeServer: AllFilmesVar,
        })

    }).then(function (resposta) {

        console.log("resposta: ", resposta);

        if (resposta.ok) {
            alert('Voto realizado com sucesso!!')
        } else {
            throw ("ERRO ao realizar o voto!");
        }
    }).catch(function (resposta) {
        console.log(`#ERRO: ${resposta}`);
    });

    return false;
}