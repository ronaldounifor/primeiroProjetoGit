const express = require("express");
const app = express();

app.get("/", function(req,res){
        res.send("Bem vindo ao meu TESTE");
    }
)

app.get("/soma/", function(req,res){
        var cor1 = req.query["corFavorita"];
        var cor2 = req.query["corAlternativa"];
        res.send("Sua cor favorita é: "+cor);
    }
)

app.listen(4000, function(erro){
    if(erro){
        console.log("Erro ao iniciar");
    } else {
        console.log("Servidor iniciado");
    }
})