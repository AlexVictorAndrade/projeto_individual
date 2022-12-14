var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idAquario", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/contagem/:setor", function (req, res) {
    medidaController.buscarMedidas(req, res);
})

router.post("/salvarSetor", function (req, res) {
    medidaController.salvarSetor(req, res);
})
module.exports = router;
