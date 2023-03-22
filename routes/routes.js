import { response, Router } from "express";
import * as func from "../utils/funciones.js";
import * as api from "../utils/api.js";

const myRouter = Router();

myRouter.get("/", (req, res) => {
    res.render("main");
});

myRouter.get("/calendario", (req, res) => {
    api.getCircuitos().then(data => {
        res.render("calendario", {circuito: data});
    }).catch(() => {
        res.render("error");
    });
});

myRouter.get("/carrera/:idCircuito", (req, res) => {
    const idCircuito = req.params.idCircuito;

    if (!isNaN(idCircuito) && idCircuito > 0 && idCircuito < 24) {
        api.iniciarCarrera(idCircuito).then(data => {
            if (data.isActive) {
                res.render("carrera", data);
            } else {
                res.render("calendario", {circuito: data});
            };
        }).catch(() => {
            res.render("error");
        });
    } else {
        res.render("error");
    };
});

myRouter.get("/posicionespiloto", (req, res) => {
    api.tablaPosiciones().then(data => {
        api.getCircuitos().then(banderas => {
            res.render("posicionesPiloto", {data, banderas});
        }).catch(() => {
            res.render("error");
        });
    }).catch(() => {
        res.render("error");
    });
});

myRouter.get("/posicionesescuderia", (req, res) => {
    api.tablaEscuderias().then(data => {
        res.render("posicionesEscuderia", {escuderia: data});
    }).catch(() => {
        res.render("error");
    });
});

myRouter.get("/abandonos", (req, res) => {
    api.tablaAbandonos().then(abandonos => {
        api.tablaFallecidos().then(fallecidos => {
            res.render("abandonos", {fallecidos, abandonos});
        }).catch(() => {
            res.render("error");
        });
    }).catch(() => {
        res.render("error");
    });
});

myRouter.get("/reset", (req, res) => {
    api.resetApi().then(() => {
        res.render("main");
    }).catch(() => {
        res.render("error");
    });
});

export default myRouter;