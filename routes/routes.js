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
            console.log(banderas)
        }).catch(() => {
            res.render("error");
        });
    }).catch(() => {
        res.render("error");
    });

    // func.tablaPosiciones().then(data => {
    //   res.render("posicionesPiloto", {bandera: data.tablaPosiciones[0], items: data.tablaPosiciones});
    // });
});

//ADAPTAR
myRouter.get("/posicionesescuderia", (req, res) => {
    func.tablaEscuderia().then(() => {
        
    });

    func.leerArchivoEquipo().then(data => {
        res.render("posicionesEscuderia", {escudo: data.equipos});
    });
});

myRouter.get("/abandonos", (req, res) => {
    func.leerArchivoPilotos().then(data => {
        const fallecidos = data.piloto.filter(e => e.isAlive == false);
        // console.log(fallecidos)
        func.tablaAbandonos().then(abandonos => {
        // console.log(abandonos);
            res.render("abandonos", {fallecidos, abandonos});
        });
    })
});

myRouter.get("/reset", (req, res) => {
    api.resetApi().then(() => {
        console.log("Reseteado")
    });
});

export default myRouter;