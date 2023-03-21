import express from "express";
import * as fs from "fs"
import * as func from "../utils/funciones.js";

// obtiene todos los circuitos
export async function getCircuitos() {
    const data = await fetch("https://slifer.bsite.net/f1-circuitos")
    return await data.json();
};
// obtiene circuito por id
export async function getCircuitosById(id) {
    const data = await fetch(`https://slifer.bsite.net/f1-circuitos/${id}`)
    return await data.json();
};
// deshabilita un circuito por id
export async function updateCircuitosById(id) {
    await fetch(`https://slifer.bsite.net/f1-circuitos/${id}`, {
        method: "PUT",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify(id)
    });
};
// obtiene todos los pilotos
export async function getPilotos() {
    const data = await fetch("https://slifer.bsite.net/f1-pilotos")
    return await data.json();
};
// obtiene todos los pilotos vivios
export async function getPilotosActivos() {
    const data = await fetch("https://slifer.bsite.net/f1-pilotos/vivos")
    return await data.json();
};
// deshabilita a piloto muerto por id
export async function updatePilotosById(id) {
    await fetch(`https://slifer.bsite.net/f1-pilotos/${id}`, {
        method: "PUT",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify(id)
    });
};
// reinicia todas las carreras
export async function resetApi() {
    await fetch("https://slifer.bsite.net/f1-reset", {
        method: "DELETE",
        headers: {
            "Accept": "application/json",
        }
    });
};

export async function simulacion(idCircuito) {
    const puntajes = await func.leerArchivoPuntajes();
    const posibilidades = await func.leerArchivoEstado();
    const circuito = await getCircuitosById(idCircuito);
    const pilotosVivos = await getPilotosActivos();
    const arrSim = [];
    const meta = 8;
    const lap = 20;
    let lugar = 0;

    for (let i = 0; i < lap; i++) {
        arrSim.push({lap: i, pilotos: []})

        pilotosVivos.forEach(pv => {
            const estado = func.randomprob(posibilidades.estado);

            // si la puntuacion es mayor a meta
            if (!pv.carreraTerminada) {
                if (estado.puntuacion == 0) {
                    pv.carreraTerminada = true;
                    pv.incidente = true;
                    pv.motivo = estado.situacion;
                    if (!estado.vivo) {
                        pv.isAlive = false;
                        pv.auto = "/img/rip.svg";
                    };
                } else {
                    pv.distancia += estado.puntuacion
                    if (pv.distancia >= meta) {
                        lugar += 1;
                        pv.lugar = lugar;
                        pv.carreraTerminada = true;
                        pv.distancia = meta
                        if (lugar <= 10) {
                            const puntos = puntajes.puntaje.find(e => e.posicion == lugar)
                            pv.puntos = puntos.puntos;
                        } else {
                            pv.puntos = 0;
                        }
                    }
                };
            };

            arrSim[i].pilotos.push(
                {
                    idPiloto: pv.id,
                    nomPiloto: pv.nombre,
                    isAlive: pv.isAlive,
                    auto: pv.auto,
                    puntos: pv.puntos,
                    distancia: pv.distancia,
                    incidente: pv.incidente,
                    motivo: pv.motivo,
                    lugar: pv.lugar,
                    carreraTerminada: pv.carreraTerminada
                }
            );
        })
    }


    console.log(arrSim[arrSim.length-1]);

    await crearSimulacionPublic(arrSim);
};

async function crearSimulacionPublic(data) {
    await fs.promises.writeFile('./public/js/simulacion.json', JSON.stringify(data), err => {
        if (err) throw err;
    });
};